#!/usr/bin/env python3
'''
    olympics-api.py
    Thomas Zeng, 26 October 2021

    An API to query an olympics database.
'''
import sys
import argparse
import flask
import json
import psycopg2

from config import password
from config import database
from config import user


app = flask.Flask(__name__)
#connection = create_connection()
##############################################
def create_connection():
    '''Creates a connection to the olympics database'''

    try:
        connection = psycopg2.connect(database = database, user = user, password = password)
    except Exception as e:
        print(e)
        exit()
        
    return connection
    
def execute_query(query, connection, formatStrings = ()): #this might bug out with string format
    '''Executes a query and returns a cursor
    '''
    try:
        cursor = connection.cursor()
        cursor.execute(query, formatStrings)
    except Exception as e:
        print(e)
        exit()
        
    return cursor
    
def cursor_to_dict(cursor, fields):
    '''Generates a list of dictionary, assumes list fields is the same size as each row in cursor
    '''
    dictionary_list = []
    
    for row in cursor:
        dictionary = {}
        for ind,entry in enumerate(row):
            dictionary[fields[ind]] = entry
        dictionary_list.append(dictionary)
    
    return dictionary_list
            
#####################################################

#app = flask.Flask(__name__)
connection = create_connection()

def query_games(connection):
    '''Queries the olympic database for all the olympics games
    '''

    query = '''SELECT game.id, game.year, game.season, game.city
               FROM game
               ORDER BY game.year;'''
    
    return execute_query(query, connection)
    
def query_nocs(connection):
    query = '''SELECT noc.noc, noc.country
               FROM noc
               ORDER BY noc.noc;'''
               
    return execute_query(query, connection)
    
def query_game_medalists(game_id, noc, connection):
    '''If noc = '', then no noc was specfied
    '''
    if noc == '':
        query = '''SELECT DISTINCT medal.athlete_id, athlete.name, athlete.sex, sport.sport, event.event, medal.medal
                   FROM medal, athlete, sport, event, event_sport
                   WHERE medal.game_id = %s
                   AND ( medal.medal = 'Gold'
                   OR medal.medal = 'Silver'
                   OR medal.medal = 'Bronze')
                   AND athlete.id = medal.athlete_id
                   AND medal.event_id = event.id
                   AND event.id = event_sport.event_id
                   AND event_sport.sport_id = sport.id;'''
        
        formatString = (game_id ,)
    else:
        query = '''SELECT DISTINCT medal.athlete_id, athlete.name, athlete.sex, sport.sport, event.event, medal.medal
                   FROM medal, athlete, sport, event, event_sport, noc
                   WHERE medal.game_id = %s
                   AND ( medal.medal = 'Gold'
                   OR medal.medal = 'Silver'
                   OR medal.medal = 'Bronze')
                   AND athlete.id = medal.athlete_id
                   AND medal.event_id = event.id
                   AND event.id = event_sport.event_id
                   AND event_sport.sport_id = sport.id
                   AND noc.noc = %s
                   AND noc.id = medal.noc_id;'''
        
        formatString = (game_id, noc)
        
    return execute_query(query, connection, formatString)

def query_game_medalists_of_noc(game_id, connection):
    query = '''SELECT DISTINCT medal.athlete_id, athlete.name, athlete.sex, sport.sport, event.event, medal.medal
               FROM medal, athlete, sport, event, event_sport
               WHERE medal.game_id = %s
               AND ( medal.medal = 'Gold'
               OR medal.medal = 'Silver'
               OR medal.medal = 'Bronze')
               AND athlete.id = medal.athlete_id
               AND medal.event_id = event.id
               AND event.id = event_sport.event_id
               AND event_sport.sport_id = sport.id;'''
               
    return execute_query(query, connection,(game_id ,))

@app.route('/games')
def get_games():
    ''' Returns a list of dictionaries of Olympic games sorted by year
    '''

    cursor = query_games(connection)
    fields = ['id','year','season','city']
    game_list = cursor_to_dict(cursor, fields)
    return json.dumps(game_list)
    
@app.route('/nocs')
def get_nocs():
    ''' Returns a list of dictionaries of Olympic games sorted by year
    '''

    cursor = query_nocs(connection)
    fields = ['abbreviation','name']
    game_list = cursor_to_dict(cursor, fields)
    return json.dumps(game_list)

@app.route('/medalists/games/<games_id>')  
def get_medalists(games_id):
    ''' Returns a list of dictionaries of Olympic games sorted by year
    '''
    noc = flask.request.args.get('noc', default='', type=str)
    cursor = query_game_medalists(games_id,noc,connection) #need to create connection
    fields = ['athlete_id','athlete_name','athlete_sex','sport','event','medal']
    game_list = cursor_to_dict(cursor, fields)
    return json.dumps(game_list)
###################################################


if __name__ == '__main__':
    parser = argparse.ArgumentParser('A sample Flask application/API')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
    
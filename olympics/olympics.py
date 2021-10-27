'''
olympics.py
by Thomas Zeng
10/17/2021

A command line program that finds certain olympic data

'''
import argparse
import psycopg2

from config import password
from config import database
from config import user

def get_parsed_arguments():
    '''Get's parsed arguments from command line
    '''
    arg_parse_description = 'allows the user to issue specific queries to a database of Olympic athletes and their medals'
    athlete_help = 'finds all the athletes that participated in the olympics from a NOC as written in STRING'
    gold_help = 'list all the NOC and the cumulative number of gold medals they won in all olympics in decreasing order of gold medals'
    silver_help = 'list all of the NOC and the cumulative number of silver medals they won in all olympics in decreasing order of silver medals'


    parser = argparse.ArgumentParser(description = arg_parse_description)
    
    command_group = parser.add_mutually_exclusive_group(required=True)
    command_group.add_argument('-a', '--athlete', metavar='STRING', nargs=1, type=str, help = athlete_help)
    command_group.add_argument('-g', '--gold', action = 'store_true', help = gold_help)
    command_group.add_argument('-s', '--silver', action = 'store_true', help = silver_help)
    
    parsed_arguments = parser.parse_args()
    
    return parsed_arguments

def create_connection():
    '''Creates a connection to the olympics database
    '''
    try:
        connection = psycopg2.connect(database = database, user = user, password = password)
    except Exception as e:
        print(e)
        exit()
        
    return connection
        
def athletes_of_noc(noc_name, connection):
    '''Queries the olympics database for ahtletes that competed under noc_name
    '''

    query =  '''SELECT DISTINCT athlete.name
                FROM athlete, medal, noc
                WHERE noc.noc = %s
                AND noc.id = medal.noc_id
                AND medal.athlete_id = athlete.id;'''
    try:
        cursor = connection.cursor()
        cursor.execute(query, (noc_name,))
    except Exception as e:
        print(e)
        exit()
        
    return cursor

def gold_table(connection):
    '''Queries the olympic database for a gold medal table
    '''
    query = 'SELECT noc.noc, COUNT(medal.medal) FROM noc, medal WHERE noc.id = medal.noc_id AND medal.medal = \'Gold\' GROUP BY noc.noc ORDER BY COUNT(medal.medal) DESC;'
    try:
        cursor = connection.cursor()
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()
        
    return cursor
        
def silver_table(connection):
    '''Queries the olympic database for a silver medal table
    '''

    query = 'SELECT noc.noc, COUNT(medal.medal) FROM noc, medal WHERE noc.id = medal.noc_id AND medal.medal = \'Silver\' GROUP BY noc.noc ORDER BY COUNT(medal.medal) DESC;'
    try:
        cursor = connection.cursor()
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()
        
    return cursor

def display_cursor(cursor):
    '''Displays the information of cursor to standard output
    '''

    for row in cursor:
        print(*row)

def main():

    arguments = get_parsed_arguments()
    connection = create_connection()
    
    if arguments.athlete:
        cursor = athletes_of_noc(arguments.athlete[0],connection)
    elif arguments.gold:
        cursor = gold_table(connection)
    else:
        cursor = silver_table(connection)
        
    display_cursor(cursor)
    
    connection.close()


if __name__ == '__main__':
    main()
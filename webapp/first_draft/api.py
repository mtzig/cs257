'''
    api.py
    Thomas Zeng and Cole Weinstein, 8 November 2021

    Rough draft Flask API to support the final project application.
'''
import sys
import flask
import json
import config
import psycopg2

api = flask.Blueprint('api', __name__)

def get_connection():
    ''' Returns a connection to the database described in the
        config module. May raise an exception as described in the
        documentation for psycopg2.connect. '''
    return psycopg2.connect(database=config.database,
                            user=config.user,
                            password=config.password)

@api.route('/countries/') 
def get_countries():
    ''' Returns a list of all the countries in our database. By        default, the list is presented in alphabetical order
        by country_name.

        Returns an empty list if there's any database failure.
    '''
    query = '''SELECT country, id
               FROM countries ORDER BY country '''
    
    country_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())
        for row in cursor:
            country = {'country':row[0],
                      'id':row[1]}
            country_list.append(country)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(country_list)

@api.route('/country/language/<country_name>')
def get_languages_for_country(country_name):
    query = '''SELECT languages.en_name
               FROM countries, languages, languages_vulnerabilities, languages_countries
               WHERE countries.country = %s
                 AND languages_countries.country_id = countries.id
                 AND languages_countries.language_vulnerability_id = languages_vulnerabilities.id
                 AND languages_vulnerabilities.language_id = languages.id
               ORDER BY languages.en_name'''
    language_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (country_name,))
        for row in cursor:
            language = {'language_name':row[0]}
            language_list.append(language)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(language_list)


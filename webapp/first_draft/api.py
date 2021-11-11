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

@api.route('/languages/') 
def get_languages():
    ''' Returns a list of all the languages in our database. By        default, the list is presented in alphabetical order
        by en_name.

        Returns an empty list if there's any database failure.
    '''
    query = '''SELECT en_name , id
               FROM languages ORDER BY en_name '''
    
    language_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())
        for row in cursor:
            language = {'language':row[0],
                      'id':row[1]}
            language_list.append(language)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(language_list)

@api.route('/country/language/<country_name>')
def get_languages_for_country(country_name):
    query = '''SELECT languages.en_name
               FROM countries, languages, languages_vulnerabilities, languages_countries
               WHERE countries.country ILIKE %s
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

@api.route('/language/<language_name>')
def get_info_for_language(language_name):
    query = '''SELECT languages.en_name, languages.es_name, languages.fr_name, languages.native_name, languages.speakers, languages.lat, languages.long, vulnerabilities.vulnerability, countries.country
               FROM countries, languages, vulnerabilities, languages_vulnerabilities, languages_countries
               WHERE languages.en_name ILIKE %s
                 AND languages_vulnerabilities.language_id = languages.id
                 AND languages_vulnerabilities.vulnerability_id = vulnerabilities.id
                 AND languages_countries.language_vulnerability_id = languages_vulnerabilities.id
                 AND languages_countries.country_id = countries.id'''
    language_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (language_name,))
        for row in cursor:
            language = {'en_name':row[0], 'es_name':row[1], 'fr_name':row[2], 'native_name':row[3], 'speakers':row[4], 'lat':float(row[5]), 'long':float(row[6]), 'vulnerability':row[7], 'country':row[8]} 
            language_list.append(language)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(language_list)
    
@api.route('/search_type/<search_string>')
def get_search_type(search_string):
    query_country = '''SELECT COUNT(country) 
                       FROM countries
                       WHERE country ILIKE %s'''
               
    query_language = '''SELECT COUNT(en_name)
                        From languages
                        WHERE en_name ILIKE %s'''
    
    search_status = -1; #function returns 0 if search_string is a country, 1 if it's a language, and -1 if it's neither.
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query_country, (search_string,))
        for row in cursor:
          if row[0] >= 1:
            search_status = 0
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query_language, (search_string,))
        for row in cursor:
          if row[0] >= 1:
            search_status = row[0]
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    search_type = [{'search_type':search_status}]
    return json.dumps(search_type)

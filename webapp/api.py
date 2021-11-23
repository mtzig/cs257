'''
  api.py
  Thomas Zeng and Cole Weinstein, 8 November 2021

  Rough draft Flask API to support the final project application.
  
  have to install country_converter
  pip install country_converter --upgrade
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

# @api.route('/countries/') 
# def get_countries():
#     ''' Returns a list of all the countries in our database. By        default, the list is presented in alphabetical order
#         by country_name.

#         Returns an empty list if there's any database failure.
#     '''
#     query = '''SELECT country, id
#                FROM countries ORDER BY country '''
    
#     country_list = []
#     try:
#         connection = get_connection()
#         cursor = connection.cursor()
#         cursor.execute(query, tuple())
#         for row in cursor:
#             country = {'country':row[0],
#                       'id':row[1]}
#             country_list.append(country)
#         cursor.close()
#         connection.close()
#     except Exception as e:
#         print(e, file=sys.stderr)

#     return json.dumps(country_list)

@api.route('/country/name/<country_code>')
def get_country_name(country_code):
  '''Returns the name of a country based on a country code.
  '''

  query = '''SELECT country
             FROM countries
             WHERE countries.country_code ILIKE %s;'''
  
  country_list = []
  try:
    connection = get_connection()
    cursor = connection.cursor()
    cursor.execute(query, (country_code,))
    for row in cursor:
      country_list.append({'country':row[0]})
    cursor.close()
    connection.close()
  except Exception as e:
    print(e, file=sys.stderr)

  return json.dumps(country_list)

@api.route('/languages/') 
def get_languages():
  ''' Returns a list of all the languages in our database. By default, the list is presented in alphabetical order by en_name.

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

@api.route('/country/language/<country_code>')
def get_languages_for_country(country_code):
  query = '''SELECT languages.en_name
             FROM countries, languages, languages_countries
             WHERE countries.country_code ILIKE %s
              AND languages_countries.country_id = countries.id
              AND languages_countries.language__id = languages.id
             ORDER BY languages.en_name'''
  language_list = []
  try:
    connection = get_connection()
    cursor = connection.cursor()
    cursor.execute(query, (country_code,))
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
  query_language_info = '''SELECT languages.en_name, languages.es_name, languages.fr_name, languages.native_name, languages.speakers, languages.lat, languages.long, vulnerabilities.vulnerability
                           FROM languages, vulnerabilities
                           WHERE languages.en_name ILIKE %s
                            AND languages.vulnerability_id. = vulnerabilities.id'''
  
  query_language_countries = '''SELECT countries.country, countries.country_code
                                FROM countries, languages, languages_countries
                                WHERE languages.en_name ILIKE %s
                                 AND languages_countries.language_id = languages.id
                                 AND languages_countries.country_id = countries.id'''

  language_list = []
  try:
    lang_connection = get_connection()
    lang_cursor = lang_connection.cursor()
    lang_cursor.execute(query_language_info, (language_name,))
    for row in lang_cursor:
      country_list = []
      try:
        country_connection = get_connection()
        country_cursor = country_connection.cursor()
        country_cursor.execute(query_language_countries, (language_name,))
        for country in country_cursor:
          country_info = {'country':country[0], 'country_code':country[1]}
          country_list.append(country_info)
        country_cursor.close()
        country_connection.close()
      except Exception as e:
        print(e, file=sys.stderr)
      language = {'en_name':row[0], 'es_name':row[1], 'fr_name':row[2], 'native_name':row[3], 'speakers':row[4], 'lat':float(row[5]), 'long':float(row[6]), 'vulnerability':row[7], 'countries':country_list} 
      language_list.append(language)
    lang_cursor.close()
    lang_connection.close()
  except Exception as e:
    print(e, file=sys.stderr)

  return json.dumps(language_list)
    
@api.route('/search_type/<search_string>')
def get_search_type(search_string):
  query_country = '''SELECT country_code 
                     FROM countries_short_name
                     WHERE %s ILIKE country_name'''
            
  query_language = '''SELECT COUNT(en_name)
                      FROM languages
                      WHERE en_name ILIKE %s'''
  
  search_status = -1; #function returns alpha_3 code if country 1 if it's a language, and -1 otherwise.
  try:
      connection = get_connection()
      cursor = connection.cursor()
      cursor.execute(query_country, (search_string,))
      for row in cursor:
          search_status = row[0]
      cursor.close()
      connection.close()
  except Exception as e:
      print(e, file=sys.stderr)
  if search_status == -1:
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

@api.route('/country_data/')
def get_country_data():
  query_country_data = '''SELECT countries.country_code, COUNT(languages.id)
                          FROM countries, languages, languages_countries
                          WHERE languages_countries.country_id = countries.id
                           AND languages_countries.language_id = languages.id
                          GROUP BY countries.country_code;'''
            
  query_country_language = '''SELECT languages.en_name
                              FROM countries, languages, languages_countries
                              WHERE languages_countries.country_id = countries.id
                               AND languages_countries.language_id = languages.id
                               AND countries.country_code LIKE %s
                              ORDER BY languages.speakers
                              LIMIT 5;'''
  
  country_data_dict = {}
  try:
    connection = get_connection()
    cursor = connection.cursor()
    cursor.execute(query_country_data, tuple())
    for row in cursor:
      language_list = []
      cursor2 = connection.cursor()
      cursor2.execute(query_country_language, (row[0],))
      for row2 in cursor2:
        language_list.append(row2[0])
      cursor2.close()
      if row[1] < 10:
        fillVal = 'LOW'
      elif row[1] < 50:
        fillVal = 'MEDIUM'
      else:
        fillVal = 'HIGH'
      country_data_dict[row[0]] = {'numLanguages' : row[1], 'languages': language_list, 'fillKey':fillVal}
    cursor.close()
    connection.close()
  except Exception as e:
    print(e, file=sys.stderr)

  return json.dumps(country_data_dict)
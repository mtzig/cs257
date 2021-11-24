'''
convert.py
by Thomas Zeng and Cole Weinstein, 8 November 2021

used to convert the data.csv file into csv files usable by the sql database

use find and replace all for ,, to ,NA,
'''

import csv

data_file = open('data.csv')
data_reader = csv.reader(data_file)

countries_file = open('countries.csv', 'w')
countries_writer = csv.writer(countries_file)
vulnerabilities_file = open('vulnerabilities.csv', 'w')
vulnerabilities_writer = csv.writer(vulnerabilities_file)
languages_file = open('languages.csv', 'w')
languages_writer = csv.writer(languages_file)
#languages_vulnerabilities_file = open('languages_vulnerabilities.csv', 'w')
#languages_vulnerabilities_writer = csv.writer(languages_vulnerabilities_file)
languages_countries_file = open('languages_countries.csv', 'w')
languages_countries_writer = csv.writer(languages_countries_file)

c_d = {}
v_d = {}
#l_d = {}
l_v_d = {}
l_c_d = {}

c_id = 1
v_id = 1
l_id = 1
l_v_id = 1
l_c_id = 1

next(data_reader)

for row in data_reader:
  countries = row[4].split(', ')
  country_codes = row[5].split(', ')
  for index, country in enumerate(countries):
    if country not in c_d:
      c_d[country] = c_id
      countries_writer.writerow([c_id, country, country_codes[index]])
      c_id += 1

  
  vuln = row[7]
  if vuln not in v_d:
    v_d[vuln] = v_id
    
    vulnerabilities_writer.writerow([v_id, vuln])
    v_id += 1

  languages_writer.writerow([l_id, row[1], row[3], row[2], row[9], row[10], row[12], row[13], v_d[row[7]]])
  
  #languages_vulnerabilities_writer.writerow([l_v_id, l_id, v_d[vuln]])

  for country in countries:
    languages_countries_writer.writerow([l_c_id, l_v_id, c_d[country]])
  
  l_id += 1
  l_v_id += 1
  l_c_id += 1
  
data_file.close()
countries_file.close()
vulnerabilities_file.close()
languages_file.close()
#languages_vulnerabilities_file.close()
languages_countries_file.close()
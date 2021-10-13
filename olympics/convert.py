'''
covert.py
by Thomas Zeng 10/12/21

used to convert the olympics csv files into csv files usable by sql database
'''

import csv

noc_file = open('noc_regions.csv')

noc_table = open('noc.csv', 'w')
noc_writer = csv.writer(noc_table)

noc_reader = csv.reader(noc_file)
next(noc_reader)

noc_id = 1

noc_dict = {}

for row in noc_reader:
    noc_dict[row[0]] = noc_id
    
    row = [noc_id] + row
    noc_writer.writerow(row[:-1])
    noc_id+=1

athlete_file = open('athlete_events.csv')

name_table = open('name.csv', 'w')
game_table = open('game.csv', 'w')
sport_table = open('sport.csv', 'w')
event_table = open('event.csv', 'w')

#name_country_table = open('name_country.csv','w')
event_sport_table = open('event_sport.csv','w')
name_noc_event_game_medal_table = open('name_noc_event_game_medal.csv','w')

name_reader = csv.reader(athlete_file)
next(name_reader)

game_id = 1
sport_id = 1
event_id = 1

name_dict = {}
game_dict = {}
sport_dict = {}
event_dict = {}



name_writer = csv.writer(name_table)
game_writer = csv.writer(game_table)
sport_writer = csv.writer(sport_table)
event_writer = csv.writer(event_table)

#name_country_writer = csv.writer(name_country_table) #change to name_country
event_sport_writer = csv.writer(event_sport_table)
name_noc_event_game_medal_writer = csv.writer(name_noc_event_game_medal_table)

for row in name_reader:
    #name_dict.add(tuple(row[0:5])) #can change later to allow last names
    if row[0] not in name_dict: #could probably be a set
        name_writer.writerow(row[0:6])
        name_dict[row[0]] = row[0]
        
          #name_noc just do it each time
        #name_noc_writer.writerow([row[0]] + [noc_dict[row[7]]])
    
    if row[8] not in game_dict:
        game_dict[row[8]] = game_id
        game_writer.writerow([game_id] + row[9:12])
        game_id += 1
    if row[12] not in sport_dict:
        sport_dict[row[12]] = sport_id
        sport_writer.writerow([sport_id] + [row[12]])
        sport_id += 1
    if row[13] not in event_dict:
        event_dict[row[13]] = event_id
        
        event_writer.writerow([event_id] + [row[13]])
        
        #event_sport put this in event conditional
        event_sport_writer.writerow([event_id] + [sport_dict[row[12]]])
        event_id += 1
        
        
        
  
    
    #event_sport put this in event conditional
    
    #name_event_game_medal put last
    name_noc_event_game_medal_writer.writerow([row[0]] + [noc_dict[row[7]]] + [event_dict[row[13]]] + [game_dict[row[8]]] + [row[14]])

#close all files at end
noc_file.close()

noc_table.close()

athlete_file.close()
name_table.close()
game_table.close()
sport_table.close()
event_table.close()

#name_country_table.close()
event_sport_table.close()
name_noc_event_game_medal_table.close()

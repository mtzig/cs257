SELECT noc.noc
FROM noc
ORDER BY noc.noc;

SELECT name.name
FROM name, name_noc, noc
WHERE noc.country = 'Kenya'
AND noc.id = name_noc.noc_id
AND name_noc.name_id = name.id;

SELECT game.year, sport.sport, event.event, name_event_game_medal.medal
FROM name, game, sport, event, event_sport, name_event_game_medal
WHERE name.name = 'Gregory Efthimios "Greg" Louganis'
AND name.id = name_event_game_medal.name_id
AND event.id = name_event_game_medal.event_id
AND event_sport.event_id = event.id
AND sport.id = event_sport.sport_id
AND game.id = name_event_game_medal.game_id
AND ( name_event_game_medal.medal = 'Gold'
OR name_event_game_medal.medal = 'Silver'
OR name_event_game_medal.medal = 'Bronze');

SELECT noc.noc, COUNT(name_event_game_medal.medal)
FROM noc, name_event_game_medal, name_noc
WHERE noc.id = name_noc.noc_id
AND name_noc.name_id = name_event_game_medal.name_id
AND name_event_game_medal.medal = 'Gold'
GROUP BY noc.noc;
ORDER BY COUNT(name_event_game_medal.medal) DESC;
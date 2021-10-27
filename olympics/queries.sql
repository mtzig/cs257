SELECT noc.noc
FROM noc
ORDER BY noc.noc;

SELECT DISTINCT athlete.name
FROM athlete, medal, noc
WHERE noc.country = 'Kenya'
AND noc.id = medal.noc_id
AND medal.athlete_id = athlete.id;



SELECT game.year, sport.sport, event.event, medal.medal
FROM athlete, game, sport, event, event_sport, medal
WHERE athlete.name = 'Gregory Efthimios "Greg" Louganis'
AND athlete.id = medal.athlete_id
AND event.id = medal.event_id
AND event_sport.event_id = event.id
AND sport.id = event_sport.sport_id
AND game.id = medal.game_id
AND ( medal.medal = 'Gold'
OR medal.medal = 'Silver'
OR medal.medal = 'Bronze');

SELECT noc.noc, COUNT(medal.medal)
FROM noc, medal
WHERE noc.id = medal.noc_id
AND medal.medal = 'Gold'
GROUP BY noc.noc
ORDER BY COUNT(medal.medal) DESC;

SELECT game.id, game.year, game.season, game.city
FROM game
ORDER BY game.year;

SELECT noc.noc, noc.country
FROM noc
ORDER BY noc.noc;

SELECT DISTINCT medal.athlete_id, athlete.name, athlete.sex, sport.sport, event.event, medal.medal
FROM medal, athlete, sport, event, event_sport
WHERE medal.game_id = 12
AND ( medal.medal = 'Gold'
OR medal.medal = 'Silver'
OR medal.medal = 'Bronze')
AND athlete.id = medal.athlete_id
AND medal.event_id = event.id
AND event.id = event_sport.event_id
AND event_sport.sport_id = sport.id;

SELECT DISTINCT medal.athlete_id, athlete.name, athlete.sex, sport.sport, event.event, medal.medal
FROM medal, athlete, sport, event, event_sport, noc
WHERE medal.game_id = 12
AND ( medal.medal = 'Gold'
OR medal.medal = 'Silver'
OR medal.medal = 'Bronze')
AND athlete.id = medal.athlete_id
AND medal.event_id = event.id
AND event.id = event_sport.event_id
AND event_sport.sport_id = sport.id
AND noc.noc = 'USA'
AND noc.id = medal.noc_id;
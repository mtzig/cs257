CREATE TABLE athlete (
    id integer,
    name text,
    sex text
);

CREATE TABLE game (
    id integer,
    year integer,
    season text,
    city text
);

CREATE TABLE noc (
	id integer,
	noc text,
	country text
);

CREATE TABLE sport (
	id integer,
	sport text
);

CREATE TABLE event (
	id integer,
	event text
);

CREATE TABLE athlete_noc (
	athlete_id integer,
	noc_id integer
);

CREATE TABLE event_sport (
	event_id integer,
	sport_id integer
);

CREATE TABLE medal (
	athlete_id integer,
	age integer,
	height integer,
	weight decimal,
	noc_id integer,
	event_id integer,
	game_id integer,
	medal text
);
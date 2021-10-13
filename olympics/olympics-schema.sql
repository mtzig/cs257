CREATE TABLE name (
    id SERIAL,
    name text,
    sex text,
    age integer,
    height integer,
	weight decimal
);

CREATE TABLE game (
    id SERIAL,
    year integer,
    season text,
    city text
);

CREATE TABLE noc (
	id SERIAL,
	noc text,
	country text
);

CREATE TABLE sport (
	id SERIAL,
	sport text
);

CREATE TABLE event (
	id SERIAL,
	event text
);

CREATE TABLE name_noc (
	name_id integer,
	noc_id integer
);

CREATE TABLE event_sport (
	event_id integer,
	sport_id integer
);

CREATE TABLE name_event_game_medal (
	name_id integer,
	event_id integer,
	game_id integer,
	medal text
);
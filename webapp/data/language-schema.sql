CREATE TABLE countries (
  id integer,
  country text,
  country_code text
);

CREATE TABLE vulnerabilities (
  id integer,
  vulnerability text
);

CREATE TABLE languages (
  id integer,
  en_name text,
  es_name text,
  fr_name text,
  native_name text,
  speakers int,
  lat decimal(7,4),
  long decimal(7,4)
  vulnerability_id integer
);

CREATE TABLE languages_countries (
  id integer,
  language_id integer,
  country_id integer
);

CREATE TABLE countries_short_names (
  country_name text,
  country_code text
)
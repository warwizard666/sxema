CREATE TABLE IF NOT EXISTS Genre(
id serial PRIMARY KEY,
name varchar(60)NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Artists(
id serial PRIMARY KEY,
name varchar(60)NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS genreartists(
genre_id integer REFERENCES Genre(id),
artists_id integer REFERENCES Artists(id),
CONSTRAINT pk_ArtistsGenres PRIMARY KEY (genre_id,artists_id)
);

CREATE TABLE IF NOT EXISTS Albums(
id serial PRIMARY KEY,
name varchar(60)NOT NULL UNIQUE,
year_of_release integer 
);

CREATE TABLE IF NOT EXISTS Albumsartists(
Albums_id integer REFERENCES Albums(id),
artists_id integer REFERENCES Artists(id),
CONSTRAINT pk_Albumsartists PRIMARY KEY (Albums_id,artists_id)
);

CREATE TABLE IF NOT EXISTS Traks(
id serial PRIMARY KEY,
name varchar(60)NOT NULL UNIQUE,
Duration integer,
Albums_id integer
);

CREATE TABLE IF NOT EXISTS Compilation(
id serial PRIMARY KEY,
title varchar(60)NOT NULL UNIQUE,
year_of_release integer
);

CREATE TABLE IF NOT EXISTS Compilationtraks(
Compilation_id integer REFERENCES Compilation(id),
Traks_id integer REFERENCES Traks(id),
CONSTRAINT pk_Compilationtraks PRIMARY KEY (Compilation_id,Traks_id)
);
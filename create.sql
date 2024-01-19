create table if not exists artist(
	artist_id serial primary key,
	artist_name varchar(60) not null
);

create table if not exists genre(
	genre_id serial primary key,
	genre_name varchar(60) not null
);

create table if not exists album(
	album_id serial primary key,
	album_name varchar(60) not null,
	album_year date null
);

create table if not exists track(
	track_id serial primary key,
	album_id int not null references album(album_id),
	track_name varchar(60) not null,
	track_duration integer not null
);

create table if not exists collection(
	collection_id serial primary key,
	collection_name varchar(60) not null,
	collection_year date null
);

 create table if not exists artist_album(
	artist_album_pk serial primary key,
	artist_id integer REFERENCES artist(artist_id),
	album_id integer references album(album_id)
);

create table if not exists artist_genre(
	artist_genre_pk serial primary key,
	artist_id integer REFERENCES artist(artist_id),
	genre_id integer references genre(genre_id)

 );

 create table if not exists collection_track(
	collection_track_pk serial primary key,
	collection_id integer not null REFERENCES collection(collection_id),
	track_id integer not null references track(track_id)
);

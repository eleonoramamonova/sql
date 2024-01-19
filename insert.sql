insert into artist (artist_name) values ('Katya'), ('Den'), ('Buba h'), ('Love');
insert into genre (genre_name) values ('pop'), ('rock'), ('rap'), ('jazz');
insert into album (album_name, album_year) values ('enjoy', '2018-02-23'), ('happy', '2015-04-2'), ('rainbow', '2020-06-15'), ('sea', '2010-07-25');
insert into track (album_id, track_name, track_duration) values ('1', 'my', '210'), ('2', 'dad', '180'), ('3', 'sun', '100'), ('4', 'amore', '230'), ('2', 'paradise', '200'), ('1', 'rain', '150');
insert into collection (collection_name, collection_year) values ('my love', '2018-01-23'), ('dad mommy', '2019-06-17'), ('sunson', '2020-03-20'), ('amoremore', '2017-10-31'), ('ocean', '2022-09-14'), ('tears', '2001-12-3');
insert into artist_album (artist_id, album_id) values ('1', '1'), ('2', '2'), ('3', '3'), ('4', '4');
insert into artist_genre (artist_id, genre_id) values ('1', '1'), ('2', '2'), ('3', '3'), ('4', '4');
insert into collection_track (collection_id, track_id) values ('1', '1'), ('2', '2'), ('3', '3'), ('4', '4'), ('5', '5'), ('6', '6');

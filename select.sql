задание 2

select track_name, track_duration from track
order by track_duration DESC
limit 1;

select track_name, track_duration from track
WHERE track_duration > 210;

select collection_name, collection_year from collection
where collection_year BETWEEN '2018-01-1' AND '2020-12-31';

select artist_name from artist
WHERE not artist_name like '%% %%';

select track_name from track
WHERE track_name like '%%my%%';

задание 3

select genre_name, count(artist_name) from genre g
left join artist_genre ag on g.genre_id = ag.genre_id
left join artist a on ag.artist_id = a.artist_id
group by g.genre_name
order by count(a.artist_id) desc;

select track_name, album_year from album a
left join track t on t.album_id = a.album_id
where album_year BETWEEN '2018-01-1' AND '2020-12-31';

select a.album_name, AVG(t.track_duration) from album as a
left join track as t on t.album_id = a.album_id
group by a.album_name
order by AVG(t.track_duration);

select distinct artist_name from artist a
where artist_name not in(
select distinct artist_name from artist a 
left join artist_album aa on a.artist_id = aa.artist_id
left join album al on al.album_id = aa.album_id
where al.album_year BETWEEN '2020-01-1' AND '2020-12-31');

select collection_name from collection c 
left join collection_track ct on c.collection_id =ct.collection_id 
left join track t on t.track_id  = ct.track_id 
left join album a on a.album_id = t.album_id 
left join artist_album aa on aa.album_id = a.album_id 
left join artist ar on ar.artist_id = aa.artist_id 
where ar.artist_name like '%Love%'
order by c.collection_name;

задание 4

select album_name from album a
join artist_album aa on a.album_id = aa.album_id 
join artist a2 on a2.artist_id = aa.artist_id 
join artist_genre ag on ag.genre_id = a2.artist_id 
join genre g on g.genre_id = ag.genre_id 
group by a.album_name 
having count(distinct g.genre_name) > 1
order by a.album_name;


select track_name from track t 
left join collection_track ct on t.track_id  = ct.track_id
where ct.track_id is null


select artist_name, track_duration from track t 
left join album a on a.album_id = t.album_id 
left join artist_album aa on aa.album_id = a.album_id 
left join artist a2 on a2.artist_id = aa.artist_id 
group by a2.artist_name, t.track_duration 
having t.track_duration = (select min(track_duration) from track)
order by a2.artist_name 

select distinct album_name from album as a
left join track as t on t.album_id = a.album_id 
where t.album_id in (
    select album_id
    from track
    group by album_id
    having count(album_id) = (
        select count(album_id)
        from track
        group by album_id
        order by count
        limit 1
    )
)
order by a.album_name

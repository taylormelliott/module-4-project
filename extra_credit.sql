-- Artist Table Q1:
select * from artist
order by name desc limit 10;

-- Artist Table Q2:
select * from artist
where name like 'Black%';

-- Artist Table Q3:
select * from artist
where name like '%Black%';

-- -- Employee Table Q1:
select * from employee
order by birth_date; 

-- Employee Table Q2:
select * from employee
order by birth_date desc;

-- Invoice Table Q1:
select count(total) from invoice
where billing_state in ('CA', 'TX', 'Az');

-- - Invoice Table Q2:
select avg(total) from invoice;

-- Join Queries Q1:
select playlist_track.track_id
from playlist_track
join playlist on playlist.playlist_id = playlist_track.playlist_id
where name = 'Music';

-- Join Queries Q2:
select track.name
from track
join playlist_track on playlist_track.track_id = track.track_id
where playlist_id = 5;

-- Join Queries Q3:
select track.name track_name, playlist.name playlist_name
from track
join playlist_track on track.track_id = playlist_track.track_id
join playlist on playlist.playlist_id = playlist_track.playlist_id;

-- Join Queries Q4:
select track.name track_name, album.title album_title
from track
join album on track.album_id = album.album_id
join genre on genre.genre_id = track.genre_id
where genre.name = 'Alternative & Punk';



               

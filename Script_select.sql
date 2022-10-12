SELECT name, count(singer_id) 
  FROM singers_genres 
  JOIN genre ON singers_genres.genre_id = genre.id
GROUP BY name
ORDER BY name;

SELECT count(time) 
  FROM tracks 
  JOIN albums ON tracks.album_id = albums.id
 WHERE year BETWEEN 2019 and 2020;

SELECT name_album, round(avg(time), 2) 
  FROM tracks 
  JOIN albums ON tracks.album_id = albums.id
GROUP BY name_album;

SELECT name_singer
  FROM singers_albums 
  JOIN singers ON singers_albums.album_id = singers.id
  JOIN albums ON singers_albums.album_id = albums.id
 WHERE year <> 2020;

SELECT name_collection, name_singer
  FROM collections c  
  JOIN tracks_collection tc ON c.id = tc.collection_id 
  JOIN tracks t ON tc.track_id = t.id 
  JOIN singers_albums sa ON t.album_id = sa.id 
  JOIN singers s ON sa.singer_id = s.id
 WHERE name_singer = 'Sia';

SELECT name_album, COUNT(genre_id) 
  FROM albums
  JOIN singers_albums sa ON albums.id = sa.album_id 
  JOIN singers ON sa.singer_id = singers.id 
  JOIN singers_genres sg ON singers.id = sg.singer_id
GROUP BY name_album
HAVING COUNT(genre_id) > 1;

SELECT name, collection_id 
  FROM tracks 
LEFT JOIN tracks_collection ON tracks.id = tracks_collection.track_id
WHERE collection_id IS NULL;

SELECT name_singer 
  FROM singers
  JOIN singers_albums ON singers.id = singers_albums.singer_id 
  JOIN tracks ON singers_albums.album_id = tracks.album_id
 WHERE time = (SELECT MIN(time) FROM tracks);

SELECT tracks.album_id, COUNT(*) AS count_tracks 
  FROM tracks
  JOIN albums ON tracks.album_id = albums.id
GROUP BY tracks.album_id
HAVING COUNT(*) = (
                   SELECT MIN(count_tracks)
                   FROM ( 
                         SELECT tracks.album_id, COUNT(*) AS count_tracks
                           FROM tracks
                       GROUP BY tracks.album_id
                        ) t1 );



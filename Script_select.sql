SELECT name, count(singer_id) 
  FROM singers_genres 
  JOIN genre ON singers_genres.genre_id = genre.id
GROUP BY name
ORDER BY name;

SELECT count(time) 
  FROM tracks 
  JOIN albums ON tracks.album_id = albums.id
 WHERE year BETWEEN 2019 and 2020;

SELECT albums.name, round(avg(time), 2) 
  FROM tracks 
  JOIN albums ON tracks.album_id = albums.album_id
GROUP BY albums.name;

SELECT singers.name
  FROM singers_albums 
  JOIN singers ON singers_albums.album_id = singers.id
  JOIN albums ON singers_albums.album_id = albums.album_id
 WHERE year <> 2020;

SELECT collections.name, singers.name
  FROM collections  
  JOIN tracks_collection tc ON collections.id = tc.collection_id 
  JOIN tracks t ON tc.track_id = t.id 
  JOIN singers_albums sa ON t.album_id = sa.id 
  JOIN singers ON sa.singer_id = singers.id
 WHERE singers.name = 'Sia';

SELECT albums.name, COUNT(genre_id) 
  FROM albums
  JOIN singers_albums sa ON albums.album_id = sa.album_id 
  JOIN singers ON sa.singer_id = singers.id 
  JOIN singers_genres sg ON singers.id = sg.singer_id
GROUP BY albums.name
HAVING COUNT(genre_id) > 1;

SELECT name, collection_id 
  FROM tracks 
LEFT JOIN tracks_collection ON tracks.id = tracks_collection.track_id
WHERE collection_id IS NULL;

SELECT singers.name 
  FROM singers
  JOIN singers_albums ON singers.id = singers_albums.singer_id 
  JOIN tracks ON singers_albums.album_id = tracks.album_id
 WHERE time = (SELECT MIN(time) FROM tracks);

SELECT tracks.album_id, COUNT(*) AS count_tracks 
  FROM tracks
  JOIN albums ON tracks.album_id = albums.album_id
GROUP BY tracks.album_id
HAVING COUNT(*) = (
                   SELECT MIN(count_tracks)
                   FROM ( 
                         SELECT tracks.album_id, COUNT(*) AS count_tracks
                           FROM tracks
                       GROUP BY tracks.album_id
                        ) t1 );


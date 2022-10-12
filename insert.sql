INSERT INTO Genre (name) 
     VALUES ('Pop'), 
            ('Classic'), 
            ('Techno'), 
            ('Rock'), 
            ('Rap');

INSERT INTO Singers (name) 
     VALUES ('Jony'), 
            ('Ed Sheeran'), 
            ('Sia'), 
            ('Fall Out Boy'), 
            ('Linkin Park'),
            ('Mark Dekoda'), 
            ('Nina Kraviz'), 
            ('Kanye West'), 
            ('2Pac'), 
            ('Tchaikovsky'),
            ('Максим');

INSERT INTO Albums (name, year) 
     VALUES ('Shivers', 2021), 
            ('Титры', 2022), 
            ('Mania', 2018), 
            ('Infected', 2015), 
            ('ye', 2018),
            ('Pacs life', 2006), 
            ('Collection of Classic music', 1999), 
            ('Hot steel', 2020), 
            ('One more light', 2017),
            ('This is acting', 2016),
            ('Максим', 2022);


INSERT INTO Tracks (name, time, album_id) 
     VALUES ('The Nutcracker', 50.0, 7),
            ('Комета', 2.40, 2),
            ('Unstoppable', 3.47, 4),
            ('Perfect', 4.40, 1),
            ('Untouchable', 3.53, 6),
            ('Stay Frosty Royal Milk Tea', 3.40, 7),
            ('Flames', 3.41, 4),
            ('ye', 3.43, 5),
            ('Moving', 2.45, 8),
            ('Mania', 3.15, 3),
            ('One more light', 5.55, 9),
            ('This is acting', 4.39, 10),
            ('Shape of you', 3.39, 1),
            ('Chandelier', 3.15, 4),
            ('Аллея', 2.26, 2),
            ('Мой рай', 3.33, 11);

INSERT INTO collections (name, year) 
     VALUES ('Albums', 2021), 
            ('Assorti', 2022), 
            ('Music', 2018), 
            ('Music collection', 2015), 
            ('New year', 2018),
            ('Relax', 2006), 
            ('Русское радио', 1999), 
            ('Summer', 2020);

INSERT INTO Singers_albums (singer_ID, album_ID) 
     VALUES (1, 2),
            (2, 1),
            (3, 4),
            (4, 10),
            (5, 9),
            (6, 3),
            (7, 8),
            (8, 5),
            (9, 6),
            (10, 7),
            (4, 7)
            (11, 11);

INSERT INTO Singers_genres (singer_ID, genre_ID) 
     VALUES (1, 1),
            (2, 1),
            (3, 1),
            (4, 4),
            (5, 4),
            (6, 3),
            (7, 3),
            (8, 5),
            (9, 5),
            (10, 2),
            (11, 1);

INSERT INTO Tracks_collection (track_ID, collection_ID) 
     VALUES (1, 1),
            (2, 2),
            (3, 3),
            (4, 4),
            (5, 5),
            (6, 6),
            (7, 7),
            (8, 8),
            (9, 1),
            (10, 2),
            (11, 3),
            (12, 4),
            (13, 5),
            (14, 6),
            (15, 7),
            (11, 8),
            (2, 1),
            (3, 2),
            (4, 4),
            (5, 4),
            (6, 3),
            (7, 3),
            (8, 5),
            (9, 5),
            (10, 2),
            (11, 1),
            (12, 1),
            (13, 1),
            (14, 4),
            (15, 4);




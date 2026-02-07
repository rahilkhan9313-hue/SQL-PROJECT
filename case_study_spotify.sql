use fingertips;

CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(100),
  password VARCHAR(100),
  registration_date DATE
);

CREATE TABLE Playlists (
  playlist_id INT PRIMARY KEY,
  playlist_name VARCHAR(100),
  user_id INT,
  created_at DATE,
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Tracks (
  track_id INT PRIMARY KEY,
  track_name VARCHAR(100),
  artist_name VARCHAR(100),
  album_name VARCHAR(100),
  duration INT,
  release_date DATE
);

CREATE TABLE PlaylistTracks (
  playlist_id INT,
  track_id INT,
  position INT,
  FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
  FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);

INSERT INTO Users (user_id, username, email, password, registration_date)
VALUES
  (1, 'Riyan', 'Riyan@gmail.com', 'password123', '2022-01-10'),
  (2, 'Sanjay', 'Sanjay@yahoo.com', 'password456', '2022-02-15'),
  (3, 'Amit', 'Amit@gmail.com', 'password789', '2022-03-20'),
  (4, 'Sheetal', 'Sheetal@yahoo.com', 'password12', '2022-04-25'),
  (5, 'Maahir', 'Maahir@gmail.com', 'password34', '2022-05-30'),
  (6, 'Prayan', 'Prayan@gmail.com', 'password56', '2022-06-05'),
  (7, 'Samarth', 'Samarth@yahoo.com', 'password78', '2022-07-10'),
  (8, 'Briti', 'Briti@yahoo.com', 'password90', '2022-08-15'),
  (9, 'Aabheri', 'Aabheri@gmail.com', 'password123', '2022-09-20'),
  (10, 'Anvika', 'Anvika@yahoo.com', 'password12', '2022-10-25');

INSERT INTO Playlists (playlist_id, playlist_name, user_id, created_at)
VALUES
  (1, 'My Favorites', 1, '2022-01-15'),
  (2, 'Road Trip Mix', 2, '2022-02-20'),
  (3, 'Party Hits', 3, '2022-03-25'),
  (4, 'Relaxing Melodies', 4, '2022-04-30'),
  (5, 'Late Night Vibes', 5, '2022-05-05'),
  (6, 'Workout Pump', 6, '2022-06-10'),
  (7, 'Chill Beats', 7, '2022-07-15'),
  (8, 'Study Jams', 8, '2022-08-20'),
  (9, 'Throwback Tunes', 9, '2022-09-25'),
  (10, 'Weekend Grooves', 10, '2022-10-30');


INSERT INTO Tracks (track_id, track_name, artist_name, album_name, duration, release_date)
VALUES
  (1, 'Shape of You', 'Ed Sheeran', '÷ (Divide)', 233, '2017-01-06'),
  (2, 'Blinding Lights', 'The Weeknd', 'After Hours', 200, '2019-11-29'),
  (3, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (4, 'Bad Guy', 'Billie Eilish', 'When We All Fall Asleep, Where Do We Go?', 194, '2019-03-29'),
  (5, 'Rockstar', 'Post Malone ft. 21 Savage', 'Beerbongs & Bentleys', 218, '2017-09-15'),
  (6, 'Happier', 'Ed Sheeran', '÷ (Divide)', 207, '2017-01-06'),
  (7, 'Save Your Tears', 'The Weeknd', 'After Hours', 223, '2019-11-29'),
  (8, 'Never Seen the Rain', 'Tones and I', 'The Kids Are Coming', 186, '2019-08-29'),
  (9, "When the Party's Over", 'Billie Eilish', 'When We All Fall Asleep', 194, '2019-03-29'),
  (10, 'Circles', 'Post Malone', "Hollywood's Bleeding", 215, '2019-09-03'),
  (11, 'Thinking Out Loud', 'Ed Sheeran', 'x', 281, '2014-06-20'),
  (12, "Can't Feel My Fac", 'The Weeknd', 'Beauty Behind the Madness', 213, '2015-06-08'),
  (13, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (14, 'Ocean Eyes', 'Billie Eilish', "Don't Smile at Me", 180, '2016-11-18'),
  (15, 'Sunflower', 'Post Malone ft. Swae Lee', 'Spider-Man: Into the Spider-Verse', 158, '2018-10-18'),
  (16, 'Photograph', 'Ed Sheeran', 'x', 258, '2014-06-20'),
  (17, 'Starboy', 'The Weeknd ft. Daft Punk', 'Starboy', 230, '2016-11-24'),
  (18, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (19, 'Lovely', 'Billie Eilish ft. Khalid', '13 Reasons Why (Season 2)', 200, '2018-04-19'),
  (20, 'Better Now', 'Post Malone', 'Beerbongs & Bentleys', 231, '2018-04-27');


INSERT INTO PlaylistTracks (playlist_id, track_id, position)
VALUES
  (1, 1, 1),
  (1, 2, 2),
  (1, 3, 3),
  (1, 11, 4),
  (1, 13, 5),
  (2, 4, 1),
  (2, 5, 2),
  (2, 12, 3),
  (2, 14, 4),
  (3, 1, 1),
  (3, 3, 2),
  (3, 5, 3),
  (4, 2, 1),
  (4, 4, 2),
  (5, 1, 1),
  (5, 3, 2),
  (5, 5, 3),
  (5, 15, 4),
  (5, 16, 5),
  (5, 17, 6),
  (6, 2, 1),
  (6, 4, 2),
  (7, 1, 1),
  (7, 5, 2),
  (7, 18, 3),
  (8, 3, 1),
  (8, 4, 2),
  (9, 1, 1),
  (9, 2, 2),
  (9, 3, 3),
  (9, 4, 4),
  (9, 5, 5),
  (9, 19, 6),
  (9, 20, 7),
  (10, 1, 1),
  (10, 3, 2),
  (10, 5, 3);

select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

#basic level

#q1  Find all the distinct album names

select distinct(album_name) from tracks;

#q2 Who is the artist of song 'Never Seen the Rain'?

select artist_name from tracks
where track_name = 'Never Seen the Rain';

#q3 Name all the user & email, who have registered with gmail id.

select *from users;

select username,email from users
where email like '%gmail.com';

#q4 List the name of users along with registration dates, who have registered after April-22.

select *from users;

select username,registration_date from users
where registration_date > '2022-04-30';

#q5  Extract the name of tracks, artists, albums and release dates for tracks released in year 2017

select *from tracks;

select track_name,artist_name,album_name,release_date from tracks
where release_date like '2017%';

#q6  Find the details of the users who have registered in between may and august.

select *from users;

select *from users 
where registration_date between '2022-05-01' and '2022-08-31';

#q7 Count the number of playlists created by each user.

select u.username,count(p.playlist_id) as total_playlist from users as u inner join playlists as p 
on u.user_id = p.user_id
group by u.username;

select *from users;
select *from playlists;

#q8 Find the track names and their durations for a specific album in the Tracks table

select *from tracks;

select track_name,album_name,duration from tracks
where album_name = 'x';

#q9 Calculate the average duration of tracks in the Tracks table

select avg(duration) from tracks;

#q10 How many users have registered with yahoo.com id?

select count(*) from users
where email like '%yahoo.com';

#intermediate level

#q11 Find the playlist names and the number of tracks in 
#each playlist created by users whose email addresses end with '@gmail.com'.

select p.playlist_name,count(*) as count_playlist from playlists as p inner join users as u 
on p.user_id = u.user_id 
where u.email like '%@gmail.com'
group by p.playlist_name;

#q12 Write a query to retrieve the usernames and email addresses of users who have created playlists 
#with more than 5 tracks and an average track duration greater than 200 seconds.

SELECT u.username, u.email
FROM Users u
INNER JOIN Playlists p ON u.user_id = p.user_id
INNER JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
INNER JOIN Tracks t ON pt.track_id = t.track_id
GROUP BY u.username, u.email
HAVING COUNT(pt.track_id) > 5 AND AVG(t.duration) > 200;

select *from users;
select *from playlists;
select *from tracks;
select *from playlisttracks;

#q13 Find the track and artist names of the tracks 
#that have a duration greater than the average duration of all tracks in the 'Tracks' table

select *from tracks;

select track_name,artist_name from tracks
where duration > (select avg(duration) from tracks);

#q14 Find the users who have created playlists with tracks from all albums released in a specific year

SELECT u.username
FROM Users u
INNER JOIN Playlists p ON u.user_id = p.user_id
INNER JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
INNER JOIN Tracks t ON pt.track_id = t.track_id
WHERE YEAR(t.release_date) = 2017
GROUP BY u.username
HAVING COUNT(DISTINCT t.album_name) = (SELECT COUNT(DISTINCT album_name) FROM Tracks WHERE YEAR(release_date) = 2017);


#q15 Name of playlist and their total durations, sorted by the number of tracks in descending order.

SELECT p.playlist_name, SUM(t.duration) AS total_duration
FROM Playlists p
INNER JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
INNER JOIN Tracks t ON pt.track_id = t.track_id
GROUP BY p.playlist_name
ORDER BY COUNT(pt.track_id) DESC;

select *from tracks;

#q16 Find the playlists that have tracks with a duration longer than the average duration of all tracks.

SELECT p.playlist_name
FROM Playlists p
INNER JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
INNER JOIN Tracks t ON pt.track_id = t.track_id
WHERE t.duration > (SELECT AVG(duration) FROM Tracks);

#q17 Find the top 3 playlists with the most tracks.

SELECT p.playlist_name, COUNT(pt.track_id) AS track_count
FROM Playlists p
INNER JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
GROUP BY p.playlist_name
ORDER BY track_count DESC
LIMIT 3;


#q18  Calculate the average track duration for each user and display the results in descending order.

SELECT u.username, AVG(t.duration) AS average_duration
FROM Users u
INNER JOIN Playlists p ON u.user_id = p.user_id
INNER JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
INNER JOIN Tracks t ON pt.track_id = t.track_id
GROUP BY u.username
ORDER BY average_duration DESC;

#q19 Find the track names and artist names of the tracks that are included in at least two different playlists.

SELECT track_name, artist_name
FROM Tracks
WHERE track_id IN (
  SELECT track_id
  FROM PlaylistTracks
  GROUP BY track_id
  HAVING COUNT(DISTINCT playlist_id) >= 2
);

#q20 Find the playlist names and the total duration of each playlist. 
#Include only the playlists created by users who registered in the year 2022.

SELECT playlist_name, SUM(duration) AS total_duration
FROM Playlists
JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
JOIN Tracks ON PlaylistTracks.track_id = Tracks.track_id
WHERE Playlists.user_id IN (
  SELECT user_id
  FROM Users
  WHERE YEAR(registration_date) = 2022
)
GROUP BY Playlists.playlist_id, playlist_name;


# advanced level

#q21. Find the track names and artist names of the tracks that are included in playlists 
#created by users who registered before the average registration date of all users.

SELECT track_name, artist_name
FROM Tracks
WHERE track_id IN (
  SELECT track_id
  FROM PlaylistTracks
  WHERE playlist_id IN (
    SELECT playlist_id
    FROM Playlists
    WHERE user_id IN (
      SELECT user_id
      FROM Users
      WHERE registration_date < (
        SELECT AVG(registration_date)
        FROM Users
      )
    )
  )
);

#q22. Use subquery to retrieve the names of users who have created playlists 
#containing tracks from both the album 'After Hours' by The Weeknd and the 
#album 'When We All Fall Asleep, Where Do We Go?' by Billie Eilish.

SELECT username
FROM Users
WHERE user_id IN (
  SELECT user_id
  FROM Playlists
  WHERE playlist_id IN (
    SELECT playlist_id
    FROM PlaylistTracks
    WHERE track_id IN (
      SELECT track_id
      FROM Tracks
      WHERE album_name = 'After Hours' AND artist_name = 'The Weeknd'
    )
  ) AND playlist_id IN (
    SELECT playlist_id
    FROM PlaylistTracks
    WHERE track_id IN (
      SELECT track_id
      FROM Tracks
      WHERE album_name = 'When We All Fall Asleep, Where Do We Go?' AND artist_name = 'Billie Eilish'
    )
  )
);

#q23. Write a SQL query to extract the name of top 3 users with the highest average track duration for their playlists.

WITH playlist_avg_duration AS (
  SELECT p.user_id, AVG(t.duration) AS avg_duration
  FROM Playlists p
  INNER JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
  INNER JOIN Tracks t ON pt.track_id = t.track_id
  GROUP BY p.user_id
)
SELECT u.username
FROM Users u
INNER JOIN playlist_avg_duration pad ON u.user_id = pad.user_id
ORDER BY pad.avg_duration DESC
LIMIT 3;

#q24. Find the tracks that have a duration greater than the average duration of all tracks
# and rank them within their respective albums.

WITH track_avg_duration AS (
  SELECT album_name, track_name, duration, RANK() OVER (PARTITION BY album_name ORDER BY duration DESC) AS track_rank
  FROM Tracks
)
SELECT album_name, track_name, duration, track_rank
FROM track_avg_duration
WHERE duration > (SELECT AVG(duration) FROM Tracks)
ORDER BY album_name, track_rank;

#q25. Name the playlists along with the total number of tracks 
#and the rank of the playlist based on the number of tracks.

WITH playlist_track_counts AS (
  SELECT playlist_id, COUNT(track_id) AS track_count, RANK() OVER (ORDER BY COUNT(track_id) DESC) AS playlist_rank
  FROM PlaylistTracks
  GROUP BY playlist_id
)
SELECT p.playlist_id, p.playlist_name, p.user_id, p.created_at, ptc.track_count, ptc.playlist_rank
FROM Playlists p
LEFT JOIN playlist_track_counts ptc ON p.playlist_id = ptc.playlist_id
ORDER BY ptc.playlist_rank;

#q26. Find the users who have created playlists with the highest number of tracks from a specific artist.
WITH user_top_artist_playlists AS (
  SELECT u.user_id, u.username, p.playlist_id, COUNT(pt.track_id) AS track_count, RANK() OVER (PARTITION BY u.user_id ORDER BY COUNT(pt.track_id) DESC) AS playlist_rank
  FROM Users u
  INNER JOIN Playlists p ON u.user_id = p.user_id
  INNER JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
  INNER JOIN Tracks t ON pt.track_id = t.track_id
  WHERE t.artist_name = 'Ed Sheeran'
  GROUP BY u.user_id, u.username, p.playlist_id
)
SELECT username, playlist_id, track_count
FROM user_top_artist_playlists
WHERE playlist_rank = 1;

#q27. Write a SQL query to retrieve the topmost users who have created playlists with the highest number of unique tracks from a specific artist.
WITH user_unique_tracks AS (
  SELECT u.user_id, u.username, COUNT(DISTINCT pt.track_id) AS unique_track_count, RANK() OVER (ORDER BY COUNT(DISTINCT pt.track_id) DESC) AS user_rank
  FROM Users u
  INNER JOIN Playlists p ON u.user_id = p.user_id
  INNER JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
  INNER JOIN Tracks t ON pt.track_id = t.track_id
  WHERE t.artist_name = 'Ed Sheeran'
  GROUP BY u.user_id, u.username
)
SELECT username, unique_track_count
FROM user_unique_tracks
WHERE user_rank <= 1;

#q28. Find the tracks that have a duration greater than the average duration of all tracks in their respective albums.

WITH album_avg_duration AS (
  SELECT album_name, AVG(duration) AS avg_duration
  FROM Tracks
  GROUP BY album_name
)
SELECT t.album_name, t.track_name, t.duration
FROM Tracks t
INNER JOIN album_avg_duration aad ON t.album_name = aad.album_name
WHERE t.duration > aad.avg_duration;

#q29. Find name of the playlists along with the user who created them, sorted by the number
#of tracks in descending order and the username in ascending order.

WITH playlist_track_counts AS (
  SELECT playlist_id, COUNT(track_id) AS track_count
  FROM PlaylistTracks
  GROUP BY playlist_id
)
SELECT p.playlist_id, p.playlist_name, p.user_id, u.username, ptc.track_count
FROM Playlists p
INNER JOIN playlist_track_counts ptc ON p.playlist_id = ptc.playlist_id
INNER JOIN Users u ON p.user_id = u.user_id
ORDER BY ptc.track_count DESC, u.username ASC;

#q30. Write a SQL query to retrieve the playlists along with the user who created them, 
#and the position of the track with the longest duration within each playlist.

WITH longest_track_positions AS (
  SELECT pt.playlist_id, MAX(t.duration) AS max_duration, MAX(pt.position) AS max_position
  FROM PlaylistTracks pt
  INNER JOIN Tracks t ON pt.track_id = t.track_id
  GROUP BY pt.playlist_id
)
SELECT p.playlist_id, p.playlist_name, p.user_id, u.username, ltp.max_duration, ltp.max_position
FROM Playlists p
INNER JOIN longest_track_positions ltp ON p.playlist_id = ltp.playlist_id
INNER JOIN Users u ON p.user_id = u.user_id;


#Quiz
#1. Use subquery to extract names of the users who have created playlists containing tracks from the 
#album '÷ (Divide)' by Ed Sheeran.

SELECT username
FROM Users
WHERE user_id IN (
  SELECT user_id
  FROM Playlists
  WHERE playlist_id IN (
    SELECT playlist_id
    FROM PlaylistTracks
    WHERE track_id IN (
      SELECT track_id
      FROM Tracks
      WHERE album_name = '÷ (Divide)' AND artist_name = 'Ed Sheeran'
    )
  )
);



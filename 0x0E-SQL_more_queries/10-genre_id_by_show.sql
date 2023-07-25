-- script lists all shows contained in the "hbtn_0d_tvshows" database
-- It retrieves the show title and the linked genre ID for each show 
-- sorts the results in ascending order based on the show title and genre ID.
SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows
JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id
ORDER BY tv_shows.title ASC, tv_show_genres.genre_id ASC;

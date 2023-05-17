--script I provided lists all shows contained in the "hbtn_0d_tvshows"
--It displays the show title and the genre ID
-- e and the genre ID (which will be NULL for shows without a genre
SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id
WHERE tv_show_genres.genre_id IS NULL
ORDER BY tv_shows.title ASC, tv_show_genres.genre_id ASC;

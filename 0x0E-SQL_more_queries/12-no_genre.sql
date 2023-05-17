--script I provided lists all shows contained in the "hbtn_0d_tvshows"
--It displays the show title and the genre ID
-- e and the genre ID (which will be NULL for shows without a genre
SELECT s.`title`, g.`genre_id`
  FROM `tv_shows` AS s
       LEFT JOIN `tv_show_genres` AS g
       ON s.`id` = g.`show_id`
       WHERE g.`genre_id` IS NULL
 ORDER BY s.`title`, g.`genre_id`;

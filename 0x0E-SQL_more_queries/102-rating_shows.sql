-- Retrieves the titles of TV shows and their corresponding total ratings
-- The results are grouped by show title and ordered in descending order
-- This allows you to see the TV shows with the highest ratings at the top of the result set.
SELECT `title`, SUM(`rate`) AS `rating`
  FROM `tv_shows` AS t
       INNER JOIN `tv_show_ratings` AS r
       ON t.`id` = r.`show_id`
 GROUP BY `title`
 ORDER BY `rating` DESC;

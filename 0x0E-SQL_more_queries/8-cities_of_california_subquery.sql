-- script lists all the cities of California that can be found in the "cities" table of the "hbtn_0d_usa" database
-- script achieves this by executing an SQL query and sorting the results in ascending order based on the "cities.id" column
SELECT cities.id, cities.name
FROM cities, states
WHERE cities.state_id = (SELECT id FROM states WHERE name = 'California')
ORDER BY cities.id ASC;

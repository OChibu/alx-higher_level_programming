-- script lists all cities contained in the "hbtn_0d_usa" database
-- sorts the results in ascending order based on the cities' ID.
SELECT cities.id, cities.name, states.name
FROM cities
JOIN states ON cities.state_id = states.id
ORDER BY cities.id ASC;

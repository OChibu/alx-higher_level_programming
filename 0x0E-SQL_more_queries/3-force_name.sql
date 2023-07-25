-- script automates the creation of the "force_name" table in the specified MySQL database
CREATE TABLE IF NOT EXISTS force_name (
  id INT,
  name VARCHAR(256) NOT NULL
);

-- Create table to host meteorite data

CREATE TABLE meteoriteFell (
	name VARCHAR,
	id INT PRIMARY KEY,
	nametype VARCHAR,
	recclass VARCHAR,
	mass VARCHAR,
	fall VARCHAR,
	year NUMERIC,
	reclat NUMERIC,
	reclong NUMERIC,
	GeoLocation VARCHAR);
	
SELECT * FROM meteoriteFell;

-- Create table to host city and country, based on reclat and reclong
CREATE TABLE location (
	id INT PRIMARY KEY,
	reclat NUMERIC,
	reclong NUMERIC,
	city VARCHAR,
	country VARCHAR);
	
SELECT * FROM location;

-- Join table to show most relevant information

SELECT meteoriteFell.id, 
	meteoriteFell.name,
	meteoriteFell.mass,
	meteoriteFell.year,
	location.city,
	location.country
FROM meteoriteFell
INNER JOIN location ON
meteoriteFell.id = location.id

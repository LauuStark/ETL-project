-- We create table to host meteorite data

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

-- We create table to host city and country, based on reclat and reclong
CREATE TABLE location (
	id INT PRIMARY KEY,
	reclat NUMERIC,
	reclong NUMERIC,
	city VARCHAR,
	country VARCHAR);
	
SELECT * FROM location;

-- We join table to show most relevant information

SELECT meteoriteFell.id, 
	meteoriteFell.name,
	meteoriteFell.mass,
	meteoriteFell.year,
	location.city,
	location.country
FROM meteoriteFell
INNER JOIN location ON
meteoriteFell.id = location.id

-- We create basic information tables

-- This table shows the number of meteorites that were seen falling on each year the data base contains.

SELECT year, COUNT(name) AS "metperyear"
FROM meteoriteFell
GROUP BY year
ORDER BY year

-- This table shows the mass of meteorites that their name start with C

SELECT name, mass
FROM meteoriteFell
WHERE name LIKE 'C%'

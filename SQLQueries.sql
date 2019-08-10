DROP TABLE IF EXISTS starbucks;
DROP TABLE IF EXISTS happiness;

--

CREATE TABLE starbucks (
    id TEXT PRIMARY KEY
    , brand TEXT
    , store_name TEXT
    , ownership_type TEXT
    , address TEXT
    , city TEXT
    , state TEXT
    , country TEXT
);

SELECT * from starbucks;

--

CREATE TABLE happiness(
    id SERIAL
    , country TEXT
    , happiness INT
);

SELECT * from happiness;


-- Joins tables
SELECT 
	star.brand
	, star.country
	, COUNT(star.id) AS "Number Of Stores"
	, hap.happiness
FROM star
JOIN hap
	ON star.country = hap.country
GROUP BY 
	star.brand
	, star.country
	, hap.happiness
ORDER BY hap.happiness;

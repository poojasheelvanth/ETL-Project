DROP TABLE starbucks;
DROP TABLE happiness;
CREATE TABLE starbucks (
    id TEXT PRIMARY KEY,
    brand TEXT,
    store_name TEXT,
    ownership_type TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    country TEXT
);

 SELECT * from starbucks;

CREATE TABLE happiness (
    id SERIAL,
    country TEXT,
    happiness INT
);
 SELECT * from happiness;
-- Joins tables
SELECT starbucks.brand, starbucks.country, COUNT(starbucks.id) AS "Number Of Stores", happiness.happiness
FROM starbucks
JOIN happiness
ON starbucks.country = happiness.country
group by starbucks.brand, starbucks.country, happiness.happiness
order by happiness.happiness;

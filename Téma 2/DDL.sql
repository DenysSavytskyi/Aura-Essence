-- Vytvorenie tabuľky perfume
CREATE TABLE perfume(
    product VARCHAR(50),
    brand VARCHAR(30),
    description VARCHAR(100),
    gender VARCHAR(10),
    volume SMALLINT,
    release_date SMALLINT,
    price DECIMAL(6,2),
    availability BOOLEAN
);

-- Premenovanie stĺpca release_date na release_year v tabuľke perfume
ALTER TABLE perfume RENAME COLUMN release_date TO release_year;

-- Pridanie nového enum typu pre pohlavie a zmena typu stĺpca gender
CREATE TYPE gender_type AS ENUM ('men', 'women', 'unisex');

ALTER TABLE perfume 
ALTER COLUMN gender TYPE gender_type 
USING gender::gender_type;
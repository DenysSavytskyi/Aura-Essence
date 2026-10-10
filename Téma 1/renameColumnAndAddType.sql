-- Renaming the column release_date to release_year in the perfume table
ALTER TABLE perfume RENAME COLUMN release_date TO release_year;

--adding a new enum type for gender and altering the gender column to use this new type
CREATE TYPE gender_type AS ENUM ('men', 'women', 'unisex');
ALTER TABLE perfume 
ALTER COLUMN gender TYPE gender_type 
USING gender::gender_type;
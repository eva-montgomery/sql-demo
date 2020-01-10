-- schema.sql is the blueprint of your database

-- How to Schema a set of guidelines
-- 1. write down a description in your native language what your app does
-- 2. circle the nouns
-- 3. each noun is a table
    -- should a thing be a column or its own table? ("why is title not a table but genre is?")
    -- information that can be shared across albums,such as genre, goes inn its own table
    -- information that is likely unique for a single album is just a column

-- to change a column into its own table: 
    -- 1. put cursor above exisiting "create table"
    -- 2. add your new create table
    -- 3. add columns to cacpture information about each item in that table
    -- 4. comment out the old column ("artists") from the other table ("albums")
    -- 5. add a foreign key from albums to artists

create table artists (  
    id serial primary key,
    name text
);

create table albums (
    -- id integer,
    id serial primary key, -- postgres automagically generates the id for you!
    -- ensures the id is unique over time
        -- IDs should never get reused in you app. EVER.
    title text,
   -- artist text,
    genre text,
    artist_id integer references artists (id)
);
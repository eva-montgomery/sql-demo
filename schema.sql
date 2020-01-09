-- schema.sql is the blueprint of your database

create table albums (
    -- id integer,
    id serial primary key, -- postgres automagically generates the id for you!
    -- ensures the id is unique over time
        -- IDs should never get reused in you app. EVER.
    title text,
    artist text,
    genre text
);
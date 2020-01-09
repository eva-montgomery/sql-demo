# Stuff you should know

- How to create a database
 - `createdb albums-browser` (this is a bash command)

- How to connect to a database:
 - from the command line:
    - `psql albums-browser`
- from postico:
    - How to create tables
        - create table
    - How to insert information into tables
        - INSERT
    - How to retrieve information from tables
        - SELECT
        - ...specific column names
        - WHERE
        - LIMIT
        - ORDERBY

-  `dropdb`-- delete table
- `psql -f schema.sql albums-browser` insert data from file schema
- `psql -f seed.sql albums-browser` insert data from file seed
- `psql albums-browser`



---------
-- means all columns --
`select * from albums;`

-- text searching --
`select * from albums where genre ='country';` -- excat match
`select * from albums where genre ilike 'Country';` -- case insensitive match
`select * from albums where genre like '%azz';` -- anything ending with 'azz'
`select * from albums where title like '%b%';` -- anything with title that has a 'b' '

`select * from albums where genre ilike 'jazz';` -- fuzzy match
`select title from albums where genre ilike 'jazz';` -- fuzzy match, returnin 1 column

`select * from albums limit 2;` -- limit the number of results
`select title from albums limit 2;`  -- only the title column, limit the results
`select title from albums order by artist limit 2;` -- "order by" must come before

`select * from albums order by artist;` -- how do I do case insensitive order
-- `select * from albums order by artist collate nocase;` -- doesn't work



insert into albums
		(title, artist, genre)
	values
		('bitches brew', 'miles davis', 'jazz'),
		('live from folsom prison', 'johnny cash', 'country'),
		('charly brown christmas', 'vince g', 'jazz')
		;
		
-- To select a specific columns :
select title from albums;		

-- To select multiple specific columns:
select genre, title from albums;`


		


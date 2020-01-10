-- insert some artists

insert into artists
        (name)
    values
        ('Miles Davis'), -- id 1
        ('Chet Baker'),  -- id 2
        ('Nina Simone') -- id 3
    ;


-- insert a few albums into my albums table

insert into albums
        (title, genre, artist_id)
    values
        ('kind of blue', 'jazz', 1),
		('bitches brew', 'jazz', 1),
        ('best of chet baker', 'jazz', 2),
        ('nina sings the blues', 'jazz', 3)
    ;
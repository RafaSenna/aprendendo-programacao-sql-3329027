-- Crie uma consulta para realizar 
--um left join com as tabelas "albums" e "artists"

select * 
FROM albums
LEFT JOIN artists on albums.ArtistID = artists.artistid;

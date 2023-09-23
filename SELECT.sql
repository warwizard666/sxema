SELECT name,Duration FROM Traks
ORDER BY Duration DESC LIMIT 1;

SELECT name, Duration FROM Traks
WHERE Duration >= 3.5;

SELECT title FROM Compilation
WHERE year_of_release BETWEEN '2018-01-01' AND '2020-12-31';

SELECT name FROM Artists
WHERE POSITION (' ' in name) = 0;

SELECT name FROM Traks
WHERE LOWER(name) LIKE '%my%' OR LOWER(name) LIKE '%мёр%';

SELECT g.name, count (a.id) FROM artists a 
JOIN Genre g ON a.id = g.id
GROUP BY g.name;

SELECT a.name, count (t.id) FROM traks t 
JOIN albums a ON a.id = t.albums_id 
WHERE year_of_release BETWEEN '2019-01-01' AND '2020-12-31'
GROUP BY a.name;

SELECT a.name, AVG(t.duration) FROM albums a 
JOIN Traks t  ON a.id  = t.albums_id 
GROUP BY a.name;

SELECT ar.name FROM Artists ar
WHERE ar.id NOT IN (
SELECT DISTINCT ala.artists_id FROM Albumsartists ala
JOIN Albums al ON ala.Albums_id = al.id
WHERE date_part('year', al.year_of_release) = 2020
);

SELECT c.title FROM Compilation c
JOIN Compilationtraks ct ON c.id = ct.Compilation_id
JOIN Traks t ON ct.Traks_id = t.id
WHERE t.Albums_id IN (SELECT al.id FROM Albums al
JOIN Albumsartists ala ON al.id = ala.Albums_id
WHERE ala.artists_id = 1);
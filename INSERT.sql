INSERT INTO Artists(name)
VALUES 
('Король и Шут'),
('Ария'),
('Clock Work Time'),
('Дом Ветров');

INSERT INTO Genre(name)
VALUES 
('Панк-рок'),
('Рок'),
('Ска-панк');

INSERT INTO Albums(name, year_of_release)
VALUES 
('Мертвый Анархист', '2018-10-11'),
('Герой Асфальта', '1987-09-04'),
('Герой и злодей', '2000-04-10');

INSERT INTO Traks(name_track,Duration, Albums_id)
VALUES 
('Мертвый Анархист', 3.12, 1),
('Некромант', 4.15, 1),
('На службе силы зла', 5.48, 2),
('Мёртвая зона', 4.57, 2),
('Дед на свадьбе', 3.55, 3),
('Запрет отца', 4.38, 3)
;

INSERT INTO Compilation(title,year_of_release)
VALUES 
('Сборник_1', '2019-11-12'),
('Сборник_2', '2020-11-12'),
('Сборник_3', '2021-11-12'),
('Сборник_4', '2022-11-12'
);

INSERT INTO genreartists (genre_id, artists_id)
VALUES
(1, 1),  -- artist_id 1 для "Король и Шут" и genre_id 1 для "Панк-рок"
(2, 2),  -- artist_id 2 для "Ария" и genre_id 2 для "Рок"
(3, 3);  -- artist_id 3 для "Clock Work Time" и genre_id 3 для "Ска-панк"

INSERT INTO Albumsartists (Albums_id, artists_id)
VALUES
(1, 1),  -- album_id 1 для "Мертвый Анархист" и artist_id 1 для "Король и Шут"
(2, 2),  -- album_id 2 для "Герой Асфальта" и artist_id 2 для "Ария"
(3, 1);  -- album_id 3 для "Герой и злодей" и artist_id 1 для "Король и Шут"

INSERT INTO Compilationtraks (Compilation_id, Traks_id)
VALUES
(1, 1),  -- compilation_id 1 для "Сборник_1" и track_id 1 для "Мертвый Анархист"
(1, 2),  -- compilation_id 1 для "Сборник_1" и track_id 2 для "Некромант"
(2, 3),  -- compilation_id 2 для "Сборник_2" и track_id 3 для "На службе силы зла"
(2, 4);
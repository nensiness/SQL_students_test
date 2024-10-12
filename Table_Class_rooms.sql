--Создание таблицы

CREATE TABLE Class_rooms
(
	ClassroomID INTEGER PRIMARY KEY,
	Faculty VARCHAR(255) NOT NULL,
	Num_students INTEGER NOT NULL
);
	
--Заполнение таблицы данными

INSERT INTO Class_rooms
	(Faculty, Num_students)
VALUES
	('Manual', 5),
	('Selenium', 5),
	('API', 5),
	('Perfomance', 5),
	('Interview', 5);
	
--Примеры SQL запросов

SELECT Faculty
FROM Class_rooms
WHERE Num_students > 4;
--Найти факультеты, в которых более 4 студентов

SELECT Faculty
FROM Class_rooms
ORDER BY Faculty ASC;
--Показать все предметы в алфавитном порядке

UPDATE Class_rooms
SET Faculty = 'Performance1'
WHERE Faculty = 'Perfomance';
--Переименовать предмет 'Perfomance' в 'Performance1'

SELECT AVG(Num_students) AS AverageStudents
FROM Class_rooms;
--Среднее количество студентов по всем предметам

SELECT Faculty
FROM Class_rooms
WHERE Faculty LIKE '%Manual%';
--Найти факультеты, в названии которых содержится слово 'Manual'

UPDATE Class_rooms
SET Num_students = Num_students + 1;
--Увеличить количество студентов на каждом факультете на 1



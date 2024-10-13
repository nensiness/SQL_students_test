--Создание таблицы

CREATE TABLE Students
(
	StudentID INTEGER PRIMARY KEY,
	First_name VARCHAR(255) NOT NULL,
	Last_name VARCHAR(255) NOT NULL,
	Country VARCHAR(255) NOT NULL,
	Language VARCHAR(255) NULL,
	Date_birth DATETIME NULL
); 

--Заполнение таблицы данными

INSERT INTO Students
	(First_name, Last_name, Country, Language, Date_birth)
VALUES
	('Alexey', 'Kurochkin', 'RUS', 'RU', '1997-06-29'),
	('Elena', 'Lodkina', 'RUS', 'RU', '1991-11-06'),
	('Olga', 'Nilson', 'UK', 'ENG', '1975-01-01'),
	('Victor', 'Barinov', 'RUS', 'RU', '1985-11-18'),
	('Nensi', 'Ness', 'USA', 'ENG', '1998-09-25');

--Примеры SQL запросов 

SELECT Country, COUNT(Country)
FROM Students
Group By Country;
--Группировка по количеству каждой страны в данном столбце(Страна);

SELECT First_name, Last_name
FROM Students
WHERE Country = 'RUS';
--Находим всех студентов из России

SELECT First_name, Last_name, Date_birth
FROM Students
WHERE Date_birth < '1990-01-01';
--Находим студентов с датой с годом рождения до 1990

SELECT Language, COUNT(*) AS StudentCount
FROM Students
GROUP BY Language;
--Количество студентов для каждого языка

SELECT First_name, Last_name
FROM Students
WHERE Last_name LIKE 'N%';
--Находим имена и фамилии студентов, у которых фамилия начинается с буквы 'N'


INSERT INTO Students
	(First_name, Last_name, Country, Language, Date_birth)
VALUES
	('Elena', 'Bauman', 'RUS', 'RU', '1995-07-19');
--Создаем нового студента, чтобы далее сделать SQL запрос на удаление. Существующих студентов удалить не можем, так как они связаны с таблицей Progress

DELETE 
FROM Students
WHERE First_name='Elena'
AND Last_name='Bauman'
--Удаляем студента из таблицы


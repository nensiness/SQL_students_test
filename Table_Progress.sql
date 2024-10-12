--Создание таблицы

CREATE TABLE Progress
(
	ProgressID INTEGER PRIMARY KEY,
	StudentID INTEGER NOT NULL,
	ClassroomID INTEGER NOT NULL,
	Score INTEGER NOT NULL, 
	FOREIGN KEY (StudentID) REFERENCES Students (StudentID), -- присвоен вторичный ключ для связи с таблицей Students
	FOREIGN KEY (ClassroomID) REFERENCES Class_rooms (ClassroomID) -- присвоен вторичный ключ для связи с таблицей Class_rooms
);


--Заполнение таблицы данными

INSERT INTO Progress
	(StudentID, ClassroomID, Score)
VALUES
	(1, 1, 10),
        (1, 2, 9),
        (1, 3, 9),
        (1, 4, 9),
        (1, 5, 8),
        (2, 1, 8),
        (2, 2, 8),
        (2, 3, 9),
        (2, 4, 9),
        (2, 5, 8),
        (3, 1, 10),
        (3, 2, 10),
        (3, 3, 9),
        (3, 4, 9),
        (3, 5, 8),
        (4, 1, 8),
        (4, 2, 5),
        (4, 3, 5),
        (4, 4, 9),
        (4, 5, 10),
        (5, 1, 7),
        (5, 2, 7),
        (5, 3, 9),
        (5, 4, 9),
        (5, 5, 8);

--Примеры SQL запросов

SELECT * 
FROM Progress  
Order by ProgressID DESC
LIMIT 2;
--Сортировка данных в порядке убывания;

SELECT AVG(Score) AS Среднее FROM Progress WHERE StudentID=1 ;
--Находим среднее значение колонки Score Таблицы Progress по студенту с ID-1

Или

SELECT SUM(Score)/ COUNT(Score)  AS Среднее FROM Progress WHERE StudentID=1 ;
--Находим среднее значение колонки Score Таблицы Progress по студенту с ID-1

SELECT DISTINCT StudentID
FROM Progress
WHERE Score < 7;
--Находим студентов, у которых есть хотя бы один балл ниже 7

SELECT StudentID
FROM Progress
GROUP BY StudentID
HAVING MAX(Score) = 10;
--Находим студентов, у которых максимальный балл равен 10

SELECT StudentID, SUM(Score) AS TotalScore
FROM Progress
GROUP BY StudentID
ORDER BY TotalScore DESC
LIMIT 1;
--Находим студентов с наибольшей суммой баллов

--Объединение трех таблиц JOIN (Students,Class_rooms,Progress)

SELECT 
  Students.First_name, -- Имя студента
  Students.Last_name,-- Фамилия студента
  Class_rooms.Faculty,-- Учебный предмет
  Progress.Score -- Оценка студента
  FROM
  Students -- Основная таблица студентов
  JOIN
  Progress -- Присоединяем таблицу с оценками
  ON
  Students.StudentID=Progress.StudentID -- Соединяем по идентификатору студента
  JOIN
  Class_rooms -- Присоединяем таблицу с информацией о классах
  ON
  Class_rooms.ClassroomID=Progress.ClassroomID; -- Соединяем по идентификатору класса





--Объединение двух таблиц INNER JOIN


--Создаем и заполняем данными первую таблицу Persons

CREATE TABLE Persons
(
	PersonID INTEGER PRIMARY KEY, -- Уникальный идентификатор для каждого сотрудника
	First_name VARCHAR(255) NOT NULL, -- Имя сотрудника, не может быть NULL
	Position_ref INEGER NULL -- Ссылка на идентификатор позиции (может быть NULL)
);


INSERT INTO Persons
	(First_name,Position_ref)
VALUES	
	('Alex', 3),
	('Pavel', 2),
	('Ivan', 1);



--Создаем и заполняем данными вторую таблицу Positions

CREATE TABLE Positions
(
	PositionID INTEGER PRIMARY KEY, -- Уникальный идентификатор для каждой позиции
	Position VARCHAR(255) NOT NULL -- Название позиции, не может быть NULL
);


INSERT INTO Positions
	(Position)
VALUES	
	('PM'),
	('Developer'),
	('QA');


--Объединяем таблицы 

SELECT PersonID, First_name, PositionID, Position 
FROM Persons --Указываем основную таблицу Persons, из которой берутся данные о сотрудниках. Мы собираемся объединить ее с таблицей Positions.
INNER JOIN Positions ON PositionID=Position_ref -- Соединяем таблицы по совпадению ID позиции (PositionID = Position_ref)

-- Результат: отображаются только те сотрудники, у которых есть соответствующая позиция в обеих таблицах
-- Если сотрудник добавлен без позиции (Position_ref), его запись не попадет в результат, так как INNER JOIN исключает несоответствия.


	


--Объединение LEFT и RIGHT JOIN

--LEFT JOIN** и RIGHT JOIN отличаются от INNER JOIN тем, что к итоговой таблице добавляются строки не имеющие совпадений в соседней таблице.

--Если используется LEFT JOIN, добавляются все записи из таблицы указанной по левую сторону от оператора, если RIGHT JOIN, то из таблицы по правую сторону от оператора.


SELECT PersonID, First_name, Position, PositionID 
FROM Persons 
LEFT JOIN Positions ON PositionID = Position_ref  -- Соединяем таблицы, включая все строки из Persons, даже если нет совпадений в Positions
	
-- Результат: возвращаются все сотрудники из таблицы Persons, даже если у них нет позиции. 
-- Для таких сотрудников Position и PositionID будут NULL. PersonID будет показывать соответствующий ID из таблицы Persons.



SELECT PersonID, First_name, Position, PositionID 
FROM Persons 
RIGHT JOIN Positions ON PositionID = Position_ref  -- Соединяем таблицы, включая все строки из таблицы Positions, даже если нет совпадений в Persons

-- Результат: возвращаются все позиции из таблицы Positions, даже если у них нет соответствующего сотрудника. 
-- Для таких позиций PersonID и First_name будут NULL, PositionID будет показывать соответствующий ID из таблицы Positions.


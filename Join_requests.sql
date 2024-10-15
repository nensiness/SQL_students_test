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
	PersonID INTEGER PRIMARY KEY,
	First_name VARCHAR(255) NOT NULL,
	Position_ref INEGER NULL
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
	PositionID INTEGER PRIMARY KEY,
	Position VARCHAR(255) NOT NULL
);


INSERT INTO Positions
	(Position)
VALUES	
	('PM'),
	('Developer'),
	('QA');


--Объединяем таблицы 

SELECT PersonID, First_name, PositionID, Position -- Выбираем идентификатор, имя сотрудника, ID позиции и название позиции
FROM Persons --Указываем основную таблицу Persons, из которой берутся данные о сотрудниках. Мы собираемся объединить ее с таблицей Positions.
INNER JOIN Positions ON PositionID=Position_ref -- Соединяем таблицы по совпадению ID позиции (PositionID = Position_ref)

-- Результат: отображаются только те сотрудники, у которых есть соответствующая позиция в обеих таблицах
-- Если сотрудник добавлен без позиции (Position_ref), его запись не попадет в результат, так как INNER JOIN исключает несоответствия.




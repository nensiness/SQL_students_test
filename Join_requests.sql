--Объединение трех таблиц (Students,Class_rooms,Progress)

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



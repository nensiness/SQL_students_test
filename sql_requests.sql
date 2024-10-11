SELECT * 
FROM Progress  
Order by ProgressID DESC
LIMIT 2;
--Сортировка данных в порядке убывания;

SELECT Country, COUNT(Country)
FROM Students
Group By Country;
--Группировка по количеству каждой страны в данном столбце(Страна);

SELECT AVG(Score) AS Среднее FROM Progress WHERE StudentID=1 ;
--Находим среднее значение колонки Score Таблицы Progress по студенту с ID-1

Или

SELECT SUM(Score)/ COUNT(Score)  AS Среднее FROM Progress WHERE StudentID=1 ;
--Находим среднее значение колонки Score Таблицы Progress по студенту с ID-1

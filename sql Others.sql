SELECT * 
FROM Progress  
Order by ProgressID DESC
LIMIT 2;
--Сортировка данных в порядке убывания;

SELECT Country, COUNT(Country)
FROM Students
Group By Country;
--Группировка по количеству каждой страны в данном столбце(Страна);
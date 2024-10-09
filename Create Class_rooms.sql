CREATE TABLE Class_rooms
(
	ClassroomID INTEGER PRIMARY KEY,
	Faculty VARCHAR(255) NOT NULL,
	Num_students INTEGER NOT NULL
);
	

INSERT INTO Class_rooms
	(Faculty, Num_students)
VALUES
	('Manual', 5),
	('Selenium', 5),
	('API', 5),
	('Perfomance', 5),
	('Interview', 5);
	

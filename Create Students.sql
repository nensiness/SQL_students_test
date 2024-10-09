CREATE TABLE Students
(
	StudentID INTEGER PRIMARY KEY,
	First_name VARCHAR(255) NOT NULL,
	Last_name VARCHAR(255) NOT NULL,
	Country VARCHAR(255) NOT NULL,
	Language VARCHAR(255) NULL,
	Date_birth DATETIME NULL
);

INSERT INTO Students
	(First_name, Last_name, Country, Language, Date_birth)
VALUES
	('Alexey', 'Kurochkin', 'RUS', 'RU', '1997-06-29'),
	('Elena', 'Lodkina', 'RUS', 'RU', '1991-11-06'),
	('Olga', 'Nilson', 'UK', 'ENG', '1975-01-01'),
	('Victor', 'Barinov', 'RUS', 'RU', '1985-11-18'),
	('Nensi', 'Ness', 'USA', 'ENG', '1998-09-25');

CREATE TABLE Progress
(
	ProgressID INTEGER PRIMARY KEY,
	StudentID INTEGER NOT NULL,
	ClassroomID INTEGER NOT NULL,
	Score INTEGER NOT NULL, 
	FOREIGN KEY (StudentID) REFERENCES Students (StudentID), -- присвоен вторичный ключ для связи с таблицей Students
	FOREIGN KEY (ClassroomID) REFERENCES Class_rooms (ClassroomID) -- присвоен вторичный ключ для связи с таблицей Class_rooms
);

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

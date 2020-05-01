CREATE TABLE Cohorts (
	'Cohort_Id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'Name' TEXT NOT NULL UNIQUE
);


CREATE TABLE Students (
	'Student_Id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'First_Name' TEXT NOT NULL,
	'Last_Name' TEXT NOT NULL,
	'Slack_Handle' TEXT NOT NULL UNIQUE,
	'Cohort_Id' INTEGER,
	FOREIGN KEY('Cohort_Id') REFERENCES 'Cohorts'('Cohort_Id')
);


CREATE TABLE Instructors (
	'Instructor_Id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'First_Name' TEXT NOT NULL,
	'Last_Name' TEXT NOT NULL,
	'Slack_Handle' TEXT NOT NULL UNIQUE,
	'Speciality' TEXT,
	'Cohort_Id' INTEGER,
	FOREIGN KEY('Cohort_Id') REFERENCES 'Cohorts'('Cohort_Id')
);


CREATE TABLE Exercises (
	'Exercise_Id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'Exercise_Name' TEXT NOT NULL UNIQUE,
	'Exercise_Language' TEXT NOT NULL
);


CREATE TABLE Student_Exercises (
	'Student_Exercise_Id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'Student_Id' INTEGER NOT NULL,
	'Exercise_Id' INTEGER NOT NULL,
	FOREIGN KEY('Student_Id') REFERENCES 'Students'('Student_Id'),
	FOREIGN KEY('Exercise_Id') REFERENCES 'Exercises'('Exercise_Id')
);



-- Create 3 cohorts

INSERT INTO Cohorts ('Name')
VALUES ('Day Cohort 38');


INSERT INTO Cohorts ('Name')
VALUES ('Day Cohort 37');


INSERT INTO Cohorts ('Name')
VALUES ('Day Cohort 36');


-- Create 5 Exercises

INSERT INTO Exercises (Exercise_Name, Exercise_Language)
VALUES ('Daily Journal One', 'JavaScript');

INSERT INTO Exercises (Exercise_Name, Exercise_Language)
VALUES ('chickenMonkey JS', 'JavaScript');

INSERT INTO Exercises (Exercise_Name, Exercise_Language)
VALUES ('City Planner', 'Python');

INSERT INTO Exercises (Exercise_Name, Exercise_Language)
VALUES ('These Are A Few Of My Favorite Things', 'JavaScript');

INSERT INTO Exercises (Exercise_Name, Exercise_Language)
VALUES ('Student Exercises', 'SQL');



-- Create 3 instructors

INSERT INTO Instructors (First_Name, Last_Name, Slack_Handle, Speciality, Cohort_Id)
VALUES ('Andy', 'Collins', 'andyc', 'philosophy', 1);

INSERT INTO Instructors (First_Name, Last_Name, Slack_Handle, Speciality, Cohort_Id)
VALUES ('Jisie', 'David', 'jisied', 'Full-Stack', 1);

INSERT INTO Instructors (First_Name, Last_Name, Slack_Handle, Speciality, Cohort_Id)
VALUES ('Bryan', 'Nilsen', 'highfive', 'High Fives and CSS', 1);


-- Create 7 Students

INSERT INTO Students (First_Name, Last_Name, Slack_Handle, Cohort_Id)
VALUES ('Bito', 'Mann', 'bito', 1);

INSERT INTO Students (First_Name, Last_Name, Slack_Handle, Cohort_Id)
VALUES ('Erin', 'Polley', 'erinp', 3);

INSERT INTO Students (First_Name, Last_Name, Slack_Handle, Cohort_Id)
VALUES ('Matt', 'Blagg', 'mblaggot', 3);

INSERT INTO Students (First_Name, Last_Name, Slack_Handle, Cohort_Id)
VALUES ('Alonzo', 'Harris', 'alonzotd', 2);

INSERT INTO Students (First_Name, Last_Name, Slack_Handle, Cohort_Id)
VALUES ('Jake', 'Hoyt', 'jhoyt', 2);

INSERT INTO Students (First_Name, Last_Name, Slack_Handle, Cohort_Id)
VALUES ('Montoya', 'Santana', 'ms13', 3);

INSERT INTO Students (First_Name, Last_Name, Slack_Handle, Cohort_Id)
VALUES ('J.', 'D.', 'jdlam', 1);

SELECT * FROM Exercises;

INSERT INTO Student_Exercises(Student_Id, Exercise_Id)
VALUES(1, 2);

INSERT INTO Student_Exercises(Student_Id, Exercise_Id)
VALUES(1, 1);

INSERT INTO Student_Exercises(Student_Id, Exercise_Id)
VALUES(2, 1);

INSERT INTO Student_Exercises(Student_Id, Exercise_Id)
VALUES(2, 3);

INSERT INTO Student_Exercises(Student_Id, Exercise_Id)
VALUES(3, 4);

INSERT INTO Student_Exercises(Student_Id, Exercise_Id)
VALUES(3, 2);

INSERT INTO Student_Exercises(Student_Id, Exercise_Id)
VALUES(4, 1);

INSERT INTO Student_Exercises(Student_Id, Exercise_Id)
VALUES(4, 5);

INSERT INTO Student_Exercises(Student_Id, Exercise_Id)
VALUES(5, 5);

INSERT INTO Student_Exercises(Student_Id, Exercise_Id)
VALUES(5, 3);

INSERT INTO Student_Exercises(Student_Id, Exercise_Id)
VALUES(6, 1);

INSERT INTO Student_Exercises(Student_Id, Exercise_Id)
VALUES(6, 4);

INSERT INTO Student_Exercises(Student_Id, Exercise_Id)
VALUES(7, 2);

INSERT INTO Student_Exercises(Student_Id, Exercise_Id)
VALUES(7, 3);

DELETE FROM Student_Exercises WHERE Student_Exercises.Student_Id = 1 AND Student_Exercises.Exercise_Id = 3;

SELECT s.FirstName, s.LastName, e.ExerciseName FROM Student s LEFT JOIN Exercise e LEFT JOIN Student_Exercises 
WHERE Student_Exercises.Exercise_Id = e.Exercise_Id AND Student_Exercises.Student_Id = s.Student_Id;
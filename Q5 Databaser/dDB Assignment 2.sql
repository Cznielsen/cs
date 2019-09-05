DROP TABLE IF EXISTS Courses;

CREATE TABLE Courses(
	CourseID int,
    CourseName varchar(200),
    Year int,
    Quarter int,
    TeacherName varchar(200),
    PRIMARY KEY(CourseID)
);

INSERT INTO Courses VALUES(1, 'Algoritmer og Datastrukturer 1', 2014, 3, 'Magnus Tagmus');
INSERT INTO Courses VALUES(2, 'Interaktionsdesign', 2014, 3, 'Christian Small Richard');
INSERT INTO Courses VALUES(3, 'Webteknologi', 2014, 3, 'Hamid Alavi Toussi');
INSERT INTO Courses VALUES(4, 'Algoritmer og Datastrukturer 1', 2015, 3, 'Gerth Stølting Brodal');
INSERT INTO Courses VALUES(5, 'Interaktionsdesign', 2015, 3, 'Clemens Nylandsted Klokmose');
INSERT INTO Courses VALUES(6, 'Webteknologi', 2015, 3, 'Michael E. Caspersen');
INSERT INTO Courses VALUES(7, 'Algoritmer og Datastrukturer 2', 2016, 4, 'Gerth Stølting Brodal');
INSERT INTO Courses VALUES(8, 'Programmeringssprog', 2016, 4, 'Olivier Danvy');
INSERT INTO Courses VALUES(9, 'Regularitet og Automater', 2016, 4, 'Hamid Alavi Toussi');

DROP TABLE IF EXISTS Projects;

CREATE TABLE Projects(
	CourseID int,
    Week int,
    Mandatory bool,
    GradeRelevant bool,
    ProjectName varchar(200),
    PRIMARY KEY(CourseID, Week)
);

INSERT INTO Projects VALUES(1, 1, TRUE, TRUE, 'Assignment 1');
INSERT INTO Projects VALUES(1, 2, TRUE, TRUE, 'Assignment 2');
INSERT INTO Projects VALUES(1, 3, FALSE, FALSE, 'Assignment 3');
INSERT INTO Projects VALUES(1, 4, FALSE, FALSE, 'Assignment 4');
INSERT INTO Projects VALUES(1, 5, FALSE, FALSE, 'Assignment 5');
INSERT INTO Projects VALUES(2, 1, FALSE, FALSE, 'Assignment 1');
INSERT INTO Projects VALUES(2, 2, FALSE, FALSE, 'Assignment 2');
INSERT INTO Projects VALUES(2, 3, FALSE, FALSE, 'Assignment 3');
INSERT INTO Projects VALUES(2, 4, FALSE, FALSE, 'Assignment 4');
INSERT INTO Projects VALUES(2, 5, FALSE, FALSE, 'Assignment 5');
INSERT INTO Projects VALUES(5, 1, FALSE, FALSE, 'Assignment 1');
INSERT INTO Projects VALUES(5, 2, FALSE, FALSE, 'Assignment 2');
INSERT INTO Projects VALUES(5, 3, FALSE, FALSE, 'Assignment 3');
INSERT INTO Projects VALUES(5, 4, FALSE, FALSE, 'Assignment 4');
INSERT INTO Projects VALUES(5, 5, FALSE, FALSE, 'Assignment 5');
INSERT INTO Projects VALUES(6, 1, TRUE, TRUE, 'Assignment 1');
INSERT INTO Projects VALUES(6, 2, TRUE, FALSE, 'Assignment 2');
INSERT INTO Projects VALUES(6, 3, FALSE, FALSE, 'Adssignment 3');
INSERT INTO Projects VALUES(6, 4, FALSe, FALSE, 'Assignment 4');
INSERT INTO Projects VALUES(6, 5, FALSE, FALSE, 'Assignment 5');

DROP TABLE IF EXISTS Supervisors;

CREATE TABLE Supervisors(
	SupervisorID int,
    SupervisorName varchar(200),
    PRIMARY KEY(SupervisorID)
);

INSERT INTO Supervisors VALUES(1, 'Konstantinos Mampentzidis');
INSERT INTO Supervisors VALUES(2, 'Tiare Magdalena Feuchtner');
INSERT INTO Supervisors VALUES(3, 'Erik Krogh Kristensen');
INSERT INTO Supervisors VALUES(4, 'Casper Benjamin Freksen');
INSERT INTO Supervisors VALUES(5, 'Hans Erik Bugge Grathwohl');
INSERT INTO Supervisors VALUES(6, 'Lau Skorstengaard');

DROP TABLE IF EXISTS Students;

CREATE TABLE Students(
	StudentID int,
    StudentName varchar(200),
    PRIMARY KEY(StudentID)
);

INSERT INTO Students VALUES(1, 'Kaj Vandbærer');
INSERT INTO Students VALUES(2, 'Andrea Skov');
INSERT INTO Students VALUES(3, 'Oscar Træstol');
INSERT INTO Students VALUES(4, 'Henrik Taxi');
INSERT INTO Students VALUES(5, 'Kirsten Leet');
INSERT INTO Students VALUES(6, 'Flemming Nisse');
INSERT INTO Students VALUES(7, 'Christian Nielsen');
INSERT INTO Students VALUES(8, 'Thomas Rasmussen');
INSERT INTO Students VALUES(9, 'Nikolai Straaup');
INSERT INTO Students VALUES(10, 'Peter Rosendal');


DROP TABLE IF EXISTS Exams;

CREATE TABLE Exams(
	CourseID int,
    Number int,
    PRIMARY KEY(CourseID, Number)
);

INSERT INTO Exams VALUES(1, 1);
INSERT INTO Exams VALUES(1, 2);
INSERT INTO Exams VALUES(2, 1);
INSERT INTO Exams VALUES(2, 2);
INSERT INTO Exams VALUES(3, 1);
INSERT INTO Exams VALUES(4, 1);
INSERT INTO Exams VALUES(5, 1);
INSERT INTO Exams VALUES(5, 2);
INSERT INTO Exams VALUES(5, 3);

DROP TABLE IF EXISTS StudentOf;

CREATE TABLE StudentOf(
	CourseID int,
    StudentID int,
    PRIMARY KEY(CourseID, StudentID)
);

INSERT INTO StudentOf VALUES(1, 1);
INSERT INTO StudentOf VALUES(1, 2);
INSERT INTO StudentOf VALUES(1, 3);
INSERT INTO StudentOf VALUES(2, 4);
INSERT INTO StudentOf VALUES(2, 5);
INSERT INTO StudentOf VALUES(2, 6);
INSERT INTO StudentOf VALUES(3, 1);
INSERT INTO StudentOf VALUES(3, 2);
INSERT INTO StudentOf VALUES(3, 3);
INSERT INTO StudentOf VALUES(4, 4);
INSERT INTO StudentOf VALUES(4, 5);
INSERT INTO StudentOf VALUES(4, 6);
INSERT INTO StudentOf VALUES(5, 1);
INSERT INTO StudentOf VALUES(5, 2);
INSERT INTO StudentOf VALUES(5, 3);
INSERT INTO StudentOf VALUES(6, 4);
INSERT INTO StudentOf VALUES(6, 5);
INSERT INTO StudentOf VALUES(6, 6);

DROP TABLE IF EXISTS SupervisorOF;

CREATE TABLE SupervisorOf(
	CourseID int,
	SupervisorID int,
    PRIMARY KEY(CourseID, SupervisorID)
);

INSERT INTO SupervisorOf VALUES(1, 1);
INSERT INTO SupervisorOf VALUES(1, 2);
INSERT INTO SupervisorOf VALUES(1, 4);
INSERT INTO SupervisorOf VALUES(2, 3);
INSERT INTO SupervisorOf VALUES(2, 5);
INSERT INTO SupervisorOf VALUES(3, 3);
INSERT INTO SupervisorOf VALUES(4, 4);
INSERT INTO SupervisorOf VALUES(4, 6);
INSERT INTO SupervisorOf VALUES(5, 3);
INSERT INTO SupervisorOf VALUES(5, 4);
INSERT INTO SupervisorOf VALUES(5, 6);

DROP TABLE IF EXISTS ProjectResult;

CREATE TABLE ProjectResult(
	CourseID int,
    Week int,
    SupervisorID int,
    StudentID int,
    Tries int,
    Points int,
    PRIMARY KEY(CourseID, Week, SupervisorID, StudentID, Tries)
);

/* Course 1 */
INSERT INTO ProjectResult VALUES(1, 1, 2, 1, 1, 10);
INSERT INTO ProjectResult VALUES(1, 1, 2, 2, 1, 0);
INSERT INTO ProjectResult VALUES(1, 1, 2, 2, 2, 6);
INSERT INTO ProjectResult VALUES(1, 1, 2, 3, 1, 8);
INSERT INTO ProjectResult VALUES(1, 2, 1, 1, 1, 9);
INSERT INTO ProjectResult VALUES(1, 2, 1, 2, 1, 8);
INSERT INTO ProjectResult VALUES(1, 2, 2, 3, 1, 0);
INSERT INTO ProjectResult VALUES(1, 2, 2, 3, 2, 0);
INSERT INTO ProjectResult VALUES(1, 2, 2, 3, 3, 7);
INSERT INTO ProjectResult VALUES(1, 3, 2, 1, 1, 7);
INSERT INTO ProjectResult VALUES(1, 3, 4, 2, 1, 4);
INSERT INTO ProjectResult VALUES(1, 3, 4, 3, 1, 5);
INSERT INTO ProjectResult VALUES(1, 4, 2, 1, 1, 7);
INSERT INTO ProjectResult VALUES(1, 4, 2, 2, 1, 0);

/* Course 6 */
INSERT INTO ProjectResult VALUES(6, 1, 4, 4, 1, 0);
INSERT INTO ProjectResult VALUES(6, 1, 3, 4, 2, 7);
INSERT INTO ProjectResult VALUES(6, 1, 4, 5, 1, 0);
INSERT INTO ProjectResult VALUES(6, 1, 4, 5, 2, 8);
INSERT INTO ProjectResult VALUES(6, 1, 4, 6, 1, 0);
INSERT INTO ProjectResult VALUES(6, 1, 6, 6, 2, 5);
INSERT INTO ProjectResult VALUES(6, 2, 4, 4, 1, 1);
INSERT INTO ProjectResult VALUES(6, 2, 3, 5, 1, 0);
INSERT INTO ProjectResult VALUES(6, 2, 3, 5, 2, 9);
INSERT INTO ProjectResult VALUES(6, 2, 6, 6, 1, 10);

DROP TABLE IF EXISTS ExamResult;

CREATE TABLE ExamResult(
	CourseID int,
	Tries int,
    StudentID int,
    Points int,
    Grade int,
    PRIMARY KEY(CourseID, Tries, StudentID)
);

INSERT INTO ExamResult VALUES(1, 1, 1, 60, 10); /* Sum points: 79 */
INSERT INTO ExamResult VALUES(1, 1, 2, 68, 4); /* Sum points: 81 */
INSERT INTO ExamResult VALUES(1, 1, 3, 44, 4); /* Sum points: 59 */
INSERT INTO ExamResult VALUES(2, 1, 4, 100, 12);
INSERT INTO ExamResult VALUES(2, 1, 5, 42, 02);
INSERT INTO ExamResult VALUES(2, 1, 6, 59, 4);
INSERT INTO ExamResult VALUES(3, 1, 1, 69, 7);
INSERT INTO ExamResult VALUES(3, 1, 2, 53, 4);
INSERT INTO ExamResult VALUES(3, 1, 3, 49, 02);
INSERT INTO ExamResult VALUES(4, 1, 4, 94, 12);
INSERT INTO ExamResult VALUES(4, 1, 5, 84, 10);
INSERT INTO ExamResult VALUES(4, 1, 6, 95, 10);
INSERT INTO ExamResult VALUES(5, 1, 1, 55, 4);
INSERT INTO ExamResult VALUES(5, 1, 2, 50, 02);
INSERT INTO ExamResult VALUES(5, 1, 3, 56, 4);
INSERT INTO ExamResult VALUES(6, 1, 4, 83, 12); /* Sum points: 91 */
INSERT INTO ExamResult VALUES(6, 1, 5, 84, 12); /* Sum points: 101 */
INSERT INTO ExamResult VALUES(6, 1, 6, 34, 02); /* Sum points: 49 */
INSERT INTO ExamResult VALUES(4, 1, 7, 55, 4);
INSERT INTO ExamResult VALUES(2, 1, 8, 60, 4); /* 4 people with same grade */
INSERT INTO ExamResult VALUES(3, 1, 9, 53, 4);
INSERT INTO ExamResult VALUES(5, 1, 10, 57, 4);

/*
Grade ranges:
0 - 20:		-03
21 - 39:	00
40 - 52:	02
53 - 64:	4
65 - 76:	7
77 - 88:	10
89 - 100:	12
*/
DROP TABLE IF EXISTS Meetings;

CREATE TABLE `Meetings`(
    `meetid` INT,
    `date` DATE,
    `slot` INT,
    `owner` VARCHAR(15),
    `what` VARCHAR(40)
);

INSERT INTO Meetings VALUES (34716,'2008-08-25',14,'mis','dDB');
INSERT INTO Meetings VALUES (34717,'2008-08-25',15,'mis','dDB');
INSERT INTO Meetings VALUES (42835,'2008-12-24',18,'amoeller','TA-meeting');
INSERT INTO Meetings VALUES (45713,'2008-09-05',13,'amoeller','Afternoon beer');
INSERT INTO Meetings VALUES (46432,'2008-09-06',14,'amoeller','Belgian beer testing');
INSERT INTO Meetings VALUES (46962,'2008-09-07',14,'amoeller','Return empty beer bottles');
INSERT INTO Meetings VALUES (86252,'2008-08-24',10,'mis','TA-meeting');
INSERT INTO Meetings VALUES (96241,'2008-09-03',12,'kjensen','Committee meeting');

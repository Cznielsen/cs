DROP TABLE IF EXISTS players;

create table players(
playerID int,
structure int,
power int,
stamina int,
playerName varchar(32),
PRIMARY KEY(playerID)
);

DROP TABLE IF EXISTS merchandise;

create table merchandise(
merchID int,
structure int,
merchName varchar(32),
PRIMARY KEY(merchID)
);

DROP TABLE IF EXISTS bosses;

create table bosses(
bossID int,
structure int,
niceness int,
PRIMARY KEY(bossID)
);
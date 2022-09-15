#create database Railway_reservation_chart;
CREATE TABLE employee (
  E_ID INTEGER PRIMARY KEY,
  E_NAME TEXT NOT NULL,
  GENDER TEXT NOT NULL,
  ADDRESS VARCHAR(100),
  PH_NO INTEGER,
  DOJ date,
  SALARY INT
);
-- insert some values
INSERT INTO employee VALUES (1, 'Ryan', 'M','patna',123456789,'2022/10/15',9000);

-- fetch some values
SELECT * FROM employee WHERE gender = 'M';
drop table employee;

------------------------------------------------------------------------

create table PASSENGER
(P_ID INTEGER PRIMARY KEY,
P_NAME VARCHAR(20) ,
SEAT_NO INTEGER,
GENDER VARCHAR(10),
PH_NUMBER INTEGER,
DOJ date,
SALARY INTEGER
);

INSERT INTO passenger VALUES (1,'AMAN',20,'M',23456,'2022/10/22',10000);

SELECT * FROM PASSENGER;

------------------------------------------------------

create table STATION
(STATION_ID INTEGER PRIMARY KEY,
STATION_NAME VARCHAR(40) ,
NO_OF_LINES INTEGER,
NO_OF_PLATFORMS INTEGER
);

INSERT INTO station VALUES (1,'patna',20,10);

SELECT * FROM station;

----------------------------------------------

create table train
(TRAIN_ID INTEGER PRIMARY KEY,
STATION_ID INTEGER ,
TRAIN_NAME VARCHAR(20)
);

INSERT INTO train VALUES (1,20,'JANSHATABDI');

SELECT * FROM train;

--------------------------------------
create table FARE(
RECEIPT_NO INTEGER PRIMARY KEY,
TRAIN_ID VARCHAR(20) ,
SOURCE VARCHAR(30),
DESTINATION VARCHAR(30),
FARE INTEGER,
TICKET_NO INTEGER,
CLASS_ID VARCHAR(10)
);

INSERT INTO FARE VALUES (1,'SLEEPER','PATNA','RANCHI',700,121,'AC');

SELECT * FROM FARE;
-------------------------------------

create table ticket(
TICKET_NO INTEGER PRIMARY KEY,
CLASS_ID VARCHAR(20) ,
SOURCE VARCHAR(20) ,
DESTINATION VARCHAR(20),
FARE INTEGER,
TRAIN_ID INTEGER
);

INSERT INTO ticket VALUES (1,'SLEEPER','PATNA','RANCHI',700,121);

SELECT * FROM ticket;

------------------------------------------
create table CLASS(
CLASS VARCHAR(20),
JOURNEY_DATE date ,
NO_OF_SEATS INTEGER,
TRAIN_ID INTEGER 
);

INSERT INTO CLASS VALUES ('SLEEPER','2022/12/10',211,121);

SELECT * FROM CLASS;

----------------------------------------------

create table TIME(
REF_NO INTEGER,
DEP_TIME time,
ARR_TIME time,
TRAIN_ID INTEGER ,
STATION_ID INTEGER
);

INSERT INTO TIME VALUES (121,'11:00','10:00',111,234);

SELECT * FROM TIME;

----------------------------------------------------

create table ROUTE(
ARR_TIME time,
DEP_TIME time,
STOP_NO INTEGER
);

INSERT INTO ROUTE VALUES ('11:00','10:00',21);

SELECT * FROM ROUTE;
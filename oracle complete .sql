 

-- *******************01CreateDatabase&Table*******************

-- for create table 
CREATE TABLE info(
  -- identity auto increment primary key not null
  Id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  Name NVARCHAR2(50),
  Age VARCHAR2(10),
  Salary NUMBER,
  Contact NVARCHAR2(50)
);




-- *******************02SelectInsertDeleteUpdate*******************

--SELECT QUERY

-- SELECT * FROM table_name
SELECT * FROM info;

--SELECT column1, column2, ... FROM table_name;
SELECT Name FROM info;



-- INSERT QUERY
--Insert Query with & without column name and selected column

-- with out column name
-- INSERT INTO table_name VALUES (value1, value2, value3, ...)
INSERT INTO info VALUES ('Laiba', '23', 100000, '0300');


-- with column name INSERT INTO table_name (column1, column2, column3, ...)VALUES (value1, value2, value3, ...)
INSERT INTO info (Name, Age, Salary, Contact) VALUES ('Laiba', '23', 100000, '0300');
INSERT INTO info (Name, Age, Salary, Contact) VALUES ('Anas', '50', 1000, '0300');
INSERT INTO info (Name, Age, Salary, Contact) VALUES ('Adnan', '28', 200000, '0301');


-- selected column name
INSERT INTO info (Name, Age) VALUES ('Misbah', '20');



-- UPDATE QUERY

-- Updated Query
UPDATE info SET Name ='Arsalan' ,Age ='50' WHERE Id = 8;
-- DELETE QUERY
DELETE FROM info WHERE Id = 6;



-- *******************03Asc&Desc_IsNull&IsNotNull*******************
-- asc/desc order

SELECT * FROM info ORDER BY Name ASC;
SELECT * FROM info ORDER BY Name DESC;


--is not null / is null (select * from table name where column name IS NULL )
--is null
SELECT * FROM info WHERE Contact IS NULL;
-- is not null
SELECT * FROM info WHERE Contact IS NOT NULL;

SELECT * FROM info WHERE (Contact IS NOT NULL OR Name IS NOT NULL);
SELECT * FROM info WHERE (Contact IS NULL AND Name IS NULL OR Age IS NOT NULL);
SELECT * FROM info WHERE (Contact IS NULL AND Id IS NULL AND Age >= 28);



-- *******************04AndOrNot*******************

----Operators (AND, NOT, OR) WITH WHERE CLAUSE
-- OR
SELECT * FROM info WHERE (Name='Misbah' OR Age ='23');
--And
SELECT * FROM info WHERE (Name='Misbah' AND Age ='20' AND Id=13);


--Not
SELECT * FROM info WHERE Name <> 'Misbah';




-- *******************05Alter,Drop&Truncate*******************


-- Alter QUERY
--Alter(Add)
--ALTER TABLE table_name ADD column_name datatype
ALTER TABLE info ADD Address VARCHAR2(50);

ALTER TABLE info ADD (Address VARCHAR2(50), Location NVARCHAR2(50));
--Alter (drop)
--ALTER TABLE table_name DROP COLUMN column_name
ALTER TABLE info DROP COLUMN Address;
ALTER TABLE info DROP COLUMN Address, Location;

-- Alter(modify)
--ALTER TABLE table_name MODIFY COLUMN column_name datatype
ALTER TABLE info MODIFY (Address INT);

--Drop QUERY
--DROP TABLE table_name;
DROP TABLE info;
---- Truncate QUERY
--TRUNCATE TABLE table_name;
TRUNCATE TABLE info;


--note You can do multiple ADD or multiple DROP COLUMN, but just one ALTER COLUMN.



---- *******************06SqlFuntions*******************
--Aggregate Function
--Sum
SELECT SUM(Salary) FROM info;
SELECT SUM(Salary) AS "Faculty Salary" FROM info;
--Count
SELECT COUNT(Salary) FROM info;
SELECT COUNT(Salary) AS "Faculty Salary" FROM info;
--Avg
SELECT AVG(Salary) FROM info;
SELECT AVG(Salary) AS "Faculty Salary" FROM info;
--min
SELECT MIN(Salary) FROM info;
SELECT MIN(Salary) AS "Faculty Salary" FROM info;
--Max
SELECT MAX(Salary) FROM info;
SELECT MAX(Salary) AS "Faculty Salary" FROM info;

--Scalar Function
--Lower
SELECT Name, LOWER(Name) FROM info;
SELECT Name, LOWER(Name) AS "Lower Case" FROM info;
--Upper
SELECT Name, UPPER(Name) FROM info;
SELECT Name, UPPER(Name) AS "Upper Case" FROM info;
--len
SELECT Name, LENGTH(Name) FROM info;
SELECT Name, LENGTH(Name) AS "Name Length" FROM info;
--substring
SELECT Name, SUBSTR(Name,3,2) FROM info;
SELECT Name, SUBSTR(Name,3,2) AS "mid value" FROM info;
--Round
SELECT Salary, ROUND(Salary,0) FROM info;
SELECT Salary, ROUND(Salary,0) AS "Round Value" FROM info;
--get date
SELECT SYSDATE FROM DUAL;
--format
SELECT TO_CHAR(Salary,'000,000') FROM info;
SELECT TO_CHAR(Salary,'000,000') AS "Salary Format" FROM info;






 

---- *******************07SqlDataType*******************

--Numeric Data types
DECLARE
  aa NUMBER(3);
BEGIN
  aa := 255;
  dbms_output.put_line(aa);
END;

DECLARE
  bb NUMBER(5);
BEGIN
  bb := -400;
  dbms_output.put_line(bb);
END;

DECLARE
  cc NUMBER(10);
BEGIN
  cc := -5260;
  dbms_output.put_line(cc);
END;

DECLARE
  dd NUMBER(19);
BEGIN
  dd := -5260;
  dbms_output.put_line(dd);
END;

DECLARE
  ee NUMBER(1);
BEGIN
  ee := NULL;
  dbms_output.put_line(ee);
END;

DECLARE
  ff NUMBER(7, 2);
BEGIN
  ff := 255.121239;
  dbms_output.put_line(ff);
END;

DECLARE
  gg NUMBER(7, 2);
BEGIN
  gg := 255.129;
  dbms_output.put_line(gg);
END;

DECLARE
  nn NUMBER(19, 4);
BEGIN
  nn := 25678567856785.129;
  dbms_output.put_line(nn);
END;


--Text Data Types
DECLARE
  hh NVARCHAR2(77);
BEGIN
  hh := '????';
  dbms_output.put_line(hh);
END;

DECLARE
  ii NUMBER(10, 4);
BEGIN
  ii := 214112;
  dbms_output.put_line(ii);
END;

DECLARE
  jj CHAR(77);
BEGIN
  jj := 'asdfasd';
  dbms_output.put_line(jj);
END;

DECLARE
  kk NVARCHAR2(77);
BEGIN
  kk := '????';
  dbms_output.put_line(kk);
END;

DECLARE
  ll VARCHAR2(77);
BEGIN
  ll := 'asdf asdf asdf ';
  dbms_output.put_line(ll);
END;

DECLARE
  mm NVARCHAR2(77);
BEGIN
  mm := N'????';
  dbms_output.put_line(mm);
END;


--date types
DECLARE
  oo DATE;
BEGIN
  oo := SYSDATE;
  dbms_output.put_line(oo);
END;

DECLARE
  pp DATE;
BEGIN
  pp := TO_DATE('12-12-2009', 'DD-MM-YYYY');
  dbms_output.put_line(pp);
END;

DECLARE
  qq TIMESTAMP;
BEGIN
  qq := TO_TIMESTAMP('12:12:12', 'HH24:MI:SS');
  dbms_output.put_line(qq);
END;


--Approximate numeric
DECLARE
  rr FLOAT;
BEGIN
  rr := 12.12123123123;
  dbms_output.put_line(rr);
END;

DECLARE
  ss REAL;
BEGIN
  ss := 12.12123123123;
  dbms_output.put_line(ss);
END;



-- *******************08SqlMisbahPrep*******************

DECLARE
  CHECK_NUMBER INT;
BEGIN
  CHECK_NUMBER := 5;
  -- EVEN ODD PROGRAM
  IF (CHECK_NUMBER % 2 = 0) THEN
    dbms_output.put_line('EVEN ' || CHECK_NUMBER || ' NUMBER');
  ELSE
    dbms_output.put_line('ODD ' || CHECK_NUMBER || ' NUMBER');
  END IF;

  -- POSITIVE AND NEGATIVE  PROGRAM
  IF (CHECK_NUMBER > 0) THEN
    dbms_output.put_line('POSITIVE ' || CHECK_NUMBER || ' NUMBER');
  ELSE
    dbms_output.put_line('NEGATIVE ' || CHECK_NUMBER || ' NUMBER');
  END IF;

  --FACTORIAL PROGRAM
  DECLARE
    Counter INT;
    FACT INT;
  BEGIN
    FACT := 1;
    Counter := 1;
    WHILE (Counter < CHECK_NUMBER) LOOP
      Counter := Counter + 1;
      FACT := FACT * Counter;
    END LOOP;
    dbms_output.put_line('The FACTORIAL value ' || CHECK_NUMBER || ' is = ' || FACT || ' FACTORIAL NUMBER');
  END;
END;



-- *******************09SqlConstraints&Operators*******************
--constraints in sql
--SQL constraints are used to specify rules for data in a table.
--PPRIMARY KEY, Identity (auto_increment), FOREIGN KEY , unique, not null, default,

CREATE TABLE info1(
  -- identity auto increment primary key not null
  Id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
  Name NVARCHAR2(50),
  Date DATE DEFAULT SYSDATE,
  Salary NUMBER,
  Contact NVARCHAR2(50) UNIQUE
);


--Operator in SQL
--Arithmetic operators
DECLARE
  result NUMBER;
BEGIN
  result := 10 + 10;
  dbms_output.put_line(result);
  result := 10 - 10;
  dbms_output.put_line(result);
  result := 10 * 10;
  dbms_output.put_line(result);
  result := 10 / 10;
  dbms_output.put_line(result);
  result := 10 MOD 10;
  dbms_output.put_line(result);
END;


--SQL Comparison Operators
--= ,<>, <, <=,>,>=
DECLARE
  a INT := 10;
BEGIN
  IF (a <> 20) THEN
    dbms_output.put_line(a);
  END IF;
END;


--Command Operator a=a+10 (a+=10)
DECLARE
  b INT := 10;
BEGIN
  b := b + 10; -- = 10+10
  dbms_output.put_line(b);
END;



-- *******************10SqlMPrimeTask*******************
DECLARE
  i INT := 2;
  num INT := 7;
  Prime BOOLEAN := TRUE;
BEGIN
  WHILE (i < num) LOOP
    IF (num MOD i = 0) THEN
      Prime := FALSE;
      EXIT;
    END IF;
    i := i + 1;
  END LOOP;
  IF (Prime) THEN
    dbms_output.put_line('is a Prime Number ' || num);
  ELSE
    dbms_output.put_line('is not a Prime Number ' || num);
  END IF;
END;



-- *******************11SqlSubQuery*******************
-- SubQuery
DECLARE
  result NUMBER;
BEGIN
  SELECT Salary INTO result FROM info WHERE Salary >= (SELECT MAX(Salary) FROM info);
  dbms_output.put_line(result);

  SELECT MAX(Salary) INTO result FROM info WHERE Salary < (SELECT MAX(Salary) FROM info);
  dbms_output.put_line(result);
END;



-- *******************12SqlJoins*******************
CREATE TABLE Department(
  Id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  DepartmentName NVARCHAR2(50),
  Location NVARCHAR2(50),
  DepartmentHead NVARCHAR2(50)
);

INSERT INTO Department VALUES ('FINANCE', 'Karachi', 'Misbah');
INSERT INTO Department VALUES ('PRODUCTION', 'Lahore', 'Laiba');
INSERT INTO Department VALUES ('HR', 'Multan', 'Harry');
INSERT INTO Department VALUES ('UNKNOWN', 'Sakkar', 'Anas');

CREATE TABLE Employee(
  Id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  Name NVARCHAR2(50),
  Gender NVARCHAR2(50),
  Salary NUMBER,
  DepartmentId NUMBER,
  CONSTRAINT fk_Department FOREIGN




 

-- *******************13SelfJoins*******************
CREATE TABLE FAMILY (
    Id NUMBER(10) PRIMARY KEY,
    Name VARCHAR2(20),
    DateOfBirth DATE,
    FatherName NUMBER(10) REFERENCES FAMILY(Id)
);

INSERT INTO FAMILY (Id, Name, DateOfBirth) VALUES (1, 'Muhammad', TO_DATE('2001-05-11', 'YYYY-MM-DD'));
INSERT INTO FAMILY (Id, Name, DateOfBirth, FatherName) VALUES (2, 'Ahmed', TO_DATE('2001-05-11', 'YYYY-MM-DD'), 1);
INSERT INTO FAMILY (Id, Name, DateOfBirth, FatherName) VALUES (3, 'Hamid', TO_DATE('2001-05-11', 'YYYY-MM-DD'), 2);
INSERT INTO FAMILY (Id, Name, DateOfBirth, FatherName) VALUES (4, 'Mahmood', TO_DATE('2001-05-11', 'YYYY-MM-DD'), 2);
INSERT INTO FAMILY (Id, Name, DateOfBirth, FatherName) VALUES (5, 'Ali', TO_DATE('2001-05-11', 'YYYY-MM-DD'), 3);
INSERT INTO FAMILY (Id, Name, DateOfBirth, FatherName) VALUES (6, 'Talha', TO_DATE('2001-05-11', 'YYYY-MM-DD'), 4);
INSERT INTO FAMILY (Id, Name, DateOfBirth, FatherName) VALUES (7, 'Zubair', TO_DATE('2001-05-11', 'YYYY-MM-DD'), 5);
INSERT INTO FAMILY (Id, Name, DateOfBirth, FatherName) VALUES (8, 'Zahid', TO_DATE('2001-05-11', 'YYYY-MM-DD'), 5);

SELECT * FROM FAMILY;

SELECT a.Name AS "Name", b.Name AS "Father Name"
FROM FAMILY a
INNER JOIN FAMILY b ON a.FatherName = b.Id;

SELECT a.Name AS "Name", b.Name AS "Father Name"
FROM FAMILY a, FAMILY b
WHERE a.FatherName = b.Id;


-- *******************14UnionGroupByHavingClauseAndLike*******************
-- for create database, it is not needed in Oracle SQL

-- for create table 
CREATE TABLE student (
    Id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Name NVARCHAR2(50),
    Age VARCHAR2(10),
    Salary INT,
    Contact NVARCHAR2(50)
);

CREATE TABLE faculty (
    Id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Name NVARCHAR2(50),
    Age VARCHAR2(10),
    Salary INT,
    Contact NVARCHAR2(50)
);

INSERT INTO student (Name, Age, Salary, Contact) VALUES ('Laiba', '23', 100000, '0300');
INSERT INTO student (Name, Age, Salary, Contact) VALUES ('Anas', '50', 1000, '0300');
INSERT INTO student (Name, Age, Salary, Contact) VALUES ('Adnan', '28', 200000, '0301');
INSERT INTO student (Name, Age, Salary, Contact) VALUES ('Misbah', '28', 200000, '0301');

INSERT INTO faculty (Name, Age, Salary, Contact) VALUES ('Talha', '23', 100000, '0300');
INSERT INTO faculty (Name, Age, Salary, Contact) VALUES ('Anas', '50', 1000, '0300');
INSERT INTO faculty (Name, Age, Salary, Contact) VALUES ('Harryson', '28', 200000, '0301');
INSERT INTO faculty (Name, Age, Salary, Contact) VALUES ('Fatimah', '28', 200000, '0301');

--union
SELECT * FROM student
UNION
SELECT * FROM faculty;

SELECT * FROM student
UNION ALL
SELECT * FROM faculty;

--group by
SELECT * FROM student;

SELECT COUNT(Id), Salary FROM student GROUP BY Salary;

--having
SELECT * FROM student;

SELECT COUNT(Id), Salary FROM student GROUP BY Salary HAVING COUNT(Id) <= 2;

--like 
SELECT * FROM student
WHERE Name LIKE 'm%';


-- *******************15CASE Statement*******************
DECLARE
  aa NUMBER(10);
BEGIN
  aa := 3;
  CASE aa
    WHEN 1 THEN
      dbms_output.put_line('the value is one');
    WHEN 2 THEN
      dbms_output.put_line('the value is two');
    WHEN 3 THEN
      dbms_output.put_line('the value is three');
    ELSE
      dbms_output.put_line('invalid');
  END CASE;

  SELECT
    name,
    salary,
    CASE
      WHEN Salary >= 1000 AND Salary <= 10000 THEN 'new teacher'
      WHEN Salary >= 100000 AND Salary <= 200000 THEN 'Senior teacher'
      ELSE 'Most Senior teacher'
    END AS Category
  FROM
    faculty;
END;
/

 

-- *******************16 Select into & insert into select statement*******************

CREATE TABLE Department (
     DeptId NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
     DepartmentName NVARCHAR2(50),
     Location NVARCHAR2(50),
     DepartmentHead NVARCHAR2(50)
);

INSERT INTO Department (DepartmentName, Location, DepartmentHead) VALUES ('FINANCE', 'Karachi', 'Misbah');
INSERT INTO Department (DepartmentName, Location, DepartmentHead) VALUES ('PRODUCTION', 'Lahore', 'Laiba');
INSERT INTO Department (DepartmentName, Location, DepartmentHead) VALUES ('HR', 'Multan', 'Harry');
INSERT INTO Department (DepartmentName, Location, DepartmentHead) VALUES ('UNKNOWN', 'Sakkar', 'Anas');

CREATE TABLE Employee (
     Id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
     Name NVARCHAR2(50),
     Gender NVARCHAR2(50),
     Salary INT,
     DepartmentId NUMBER(10) REFERENCES Department(DeptId)
);

INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Ali', 'Male', 40000, 1);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Fatimah', 'Female', 30000, 3);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Muhammad', 'Male', 35000, 1);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Ayesha', 'Female', 45000, 2);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Yusuf', 'Male', 28000, 2);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Hassan', 'Male', 70000, 1);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Maryam', 'Female', 48000, 3);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Moosa', 'Male', 55000, 1);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Haroon', 'Male', 65000, 1);

--Copy with*Attributes in same database 
CREATE TABLE EmployeeCP AS SELECT * FROM Employee;
SELECT * FROM Employee;
SELECT * FROM EmployeeCP;

--Copy with*Attributes in other database 
CREATE DATABASE school2;
-- (Assuming you have already created the "school2" database)

CREATE TABLE school2.dbo.EmployeeCP AS SELECT * FROM Employee;
SELECT * FROM school2.dbo.EmployeeCP;

--Copy with Selected Attributes in Same database 
CREATE TABLE EmployeeCPS AS SELECT ID, Name, Gender FROM Employee;
SELECT * FROM EmployeeCPS;

SELECT Employee.Id, Name, Salary, Gender, DepartmentName, Location, DepartmentHead, DepartmentId INTO JOINCP
FROM Department
INNER JOIN Employee ON Employee.DepartmentId = Department.DeptId;
SELECT * FROM JOINCP;


CREATE TABLE student(
    Id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
    Name NVARCHAR2(50),
    Age VARCHAR2(10),
    Salary INT,
    Contact NVARCHAR2(50)
);

CREATE TABLE faculty(
    Id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
    Name NVARCHAR2(50),
    Age VARCHAR2(10),
    Salary INT,
    Contact NVARCHAR2(50)
);

INSERT INTO student (Name, Age, Salary, Contact) VALUES ('Laiba', '23', 100000, '0300');
INSERT INTO student (Name, Age, Salary, Contact) VALUES ('Anas', '50', 1000, '0300');
INSERT INTO student (Name, Age, Salary, Contact) VALUES ('Adnan', '28', 200000, '0301');
INSERT INTO student (Name, Age, Salary, Contact) VALUES ('Misbah', '28', 200000, '0301');

INSERT INTO faculty (Name, Age, Salary, Contact) VALUES ('Talha', '23', 100000, '0300');
INSERT INTO faculty (Name, Age, Salary, Contact) VALUES ('Anas ', '50', 1000, '0300');
INSERT INTO faculty (Name, Age, Salary, Contact) VALUES ('Harryson', '28', 200000, '0301');
INSERT INTO faculty (Name, Age, Salary, Contact) VALUES ('Fatimah', '28', 200000, '0301');
INSERT INTO faculty (Name, Age, Salary, Contact) VALUES ('jawad', '28', 300000, '0301');
INSERT INTO faculty (Name, Age, Salary, Contact) VALUES ('fawad', '28', 300000, '0301');
INSERT INTO faculty (Name, Age, Salary, Contact) VALUES ('jawed', '28', 300000, '0301');
INSERT INTO faculty (Name, Age, Salary, Contact) VALUES ('fateh', '28', 300000, '0301');
INSERT INTO faculty (Name, Age, Salary, Contact) VALUES ('osama', '28', 10000, '0301');
INSERT INTO faculty (Name, Age, Salary, Contact) VALUES ('Fatimah', '28', 10000, '0301');

TRUNCATE TABLE student2;

CREATE TABLE student2(
    Id INT PRIMARY KEY,
    Name NVARCHAR2(50),
    Age VARCHAR2(10),
    Salary INT,
    Contact NVARCHAR2(50)
);

CREATE TABLE faculty1(
    Id INT PRIMARY KEY NOT NULL,
    Name NVARCHAR2(50),
    Age VARCHAR2(10),
    Salary INT,
    Contact NVARCHAR2(50)
);

SELECT * FROM student2;

INSERT INTO student2 (Id, Name, Age, Salary, Contact) SELECT Id, Name, Age, Salary, Contact FROM faculty1;

INSERT INTO student (Name, Age, Salary) SELECT Name, Age, Salary FROM faculty;

INSERT INTO student (Name) SELECT Name FROM faculty WHERE Id = 1;


-- *******************17Cardinality in database*******************

-- (Assuming you have already created the "relationship" database)

CREATE TABLE STUDENT(
"Student ID" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
"Students Name" NVARCHAR2(50) 
);
INSERT INTO STUDENT ("Students Name") VALUES ('Misbah');
INSERT INTO STUDENT ("Students Name") VALUES ('Maham');
INSERT INTO STUDENT ("Students Name") VALUES ('Maryam');
INSERT INTO STUDENT ("Students Name") VALUES ('Umaima');
INSERT INTO STUDENT ("Students Name") VALUES ('Fatima');
INSERT INTO STUDENT ("Students Name") VALUES ('Zainab');
INSERT INTO STUDENT ("Students Name") VALUES ('Affan');
INSERT INTO STUDENT ("Students Name") VALUES ('Osman');
INSERT INTO STUDENT ("Students Name") VALUES ('Hassan');
INSERT INTO STUDENT ("Students Name") VALUES ('Hamza');
INSERT INTO STUDENT ("Students Name") VALUES ('Zubair');
INSERT INTO STUDENT ("Students Name") VALUES ('Abubakar');
INSERT INTO STUDENT ("Students Name") VALUES ('Umer');

CREATE TABLE MARKS(
"Roll Number" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,


StudentID INT REFERENCES STUDENT("Student ID"),
Pasingyear VARCHAR(10), 
Examination NVARCHAR2(50),
ObtainedMarks INT,
Result VARCHAR(10)
);

INSERT INTO MARKS (StudentID, Pasingyear, Examination, ObtainedMarks, Result) VALUES (1000, 2020, 'Annual', 540, 'Pass');
INSERT INTO MARKS (StudentID, Pasingyear, Examination, ObtainedMarks, Result) VALUES (1002, 2010, 'Annual', 640, 'Pass');
INSERT INTO MARKS (StudentID, Pasingyear, Examination, ObtainedMarks, Result) VALUES (1003, 2017, 'Annual', 840, 'Pass');
INSERT INTO MARKS (StudentID, Pasingyear, Examination, ObtainedMarks, Result) VALUES (1004, 2016, 'Supply', 240, 'Fail');
INSERT INTO MARKS (StudentID, Pasingyear, Examination, ObtainedMarks, Result) VALUES (1005, 2018, 'Annual', 570, 'Pass');
INSERT INTO MARKS (StudentID, Pasingyear, Examination, ObtainedMarks, Result) VALUES (1006, 2019, 'Annual', 556, 'Pass');
INSERT INTO MARKS (StudentID, Pasingyear, Examination, ObtainedMarks, Result) VALUES (1007, 2015, 'Supply', 345, 'Fail');
INSERT INTO MARKS (StudentID, Pasingyear, Examination, ObtainedMarks, Result) VALUES (1008, 2014, 'Annual', 567, 'Pass');
INSERT INTO MARKS (StudentID, Pasingyear, Examination, ObtainedMarks, Result) VALUES (1009, 2016, 'Annual', 456, 'Pass');
INSERT INTO MARKS (StudentID, Pasingyear, Examination, ObtainedMarks, Result) VALUES (1010, 2013, 'Annual', 866, 'Pass');
INSERT INTO MARKS (StudentID, Pasingyear, Examination, ObtainedMarks, Result) VALUES (1011, 2012, 'Annual', 567, 'Pass');
INSERT INTO MARKS (StudentID, Pasingyear, Examination, ObtainedMarks, Result) VALUES (1012, 2011, 'Annual', 765, 'Pass');
INSERT INTO MARKS (StudentID, Pasingyear, Examination, ObtainedMarks, Result) VALUES (1001, 2011, 'Annual', 765, 'Pass');

SELECT * FROM STUDENT;
SELECT * FROM MARKS;


CREATE TABLE Department (
     Id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
     DepartmentName NVARCHAR2(50),
     Location NVARCHAR2(50),
     DepartmentHead NVARCHAR2(50)
);

INSERT INTO Department (DepartmentName, Location, DepartmentHead) VALUES ('FINANCE', 'Karachi', 'Misbah');
INSERT INTO Department (DepartmentName, Location, DepartmentHead) VALUES ('PRODUCTION', 'Lahore', 'Laiba');
INSERT INTO Department (DepartmentName, Location, DepartmentHead) VALUES ('HR', 'Multan', 'Harry');
INSERT INTO Department (DepartmentName, Location, DepartmentHead) VALUES ('UNKNOWN', 'Sakkar', 'Anas');

CREATE TABLE Employee (
     Id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
     Name NVARCHAR2(50),
     Gender NVARCHAR2(50),
     Salary INT,
     DepartmentId NUMBER(10) REFERENCES Department(Id)
);

INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Ali', 'Male', 40000, 1);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Fatimah', 'Female', 30000, 3);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Muhammad', 'Male', 35000, 1);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Ayesha', 'Female', 45000, 2);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Yusuf', 'Male', 28000, 2);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Hassan', 'Male', 70000, 1);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Maryam', 'Female', 48000, 3);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Moosa', 'Male', 55000, 1);
INSERT INTO Employee (Name, Gender, Salary, DepartmentId) VALUES ('Haroon', 'Male', 65000, 1);

SELECT * FROM Department;
SELECT * FROM Employee;


-- Many to 1 relationship
--inverse to many to 1...

-- Many to Many relationship

CREATE TABLE Class(
    Id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
    Title VARCHAR2(30),
    Instructor VARCHAR2(30)
);
INSERT INTO Class (Title, Instructor) VALUES ('Class 1', 'Nasir');
INSERT INTO Class (Title, Instructor) VALUES ('Class 2', 'Haris');
INSERT INTO Class (Title, Instructor) VALUES ('Class 3', 'Rohan');

CREATE TABLE Students(
    Id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
    Name VARCHAR2(35)
); 
INSERT INTO Students (Name) VALUES ('Laiba');
INSERT INTO Students (Name) VALUES ('Misbah');
INSERT INTO Students (Name) VALUES ('Anas');

CREATE TABLE ClassStudentTableRelation(
    Id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
    StudentAddress VARCHAR2(14) NOT NULL,
    ClassID NUMBER(10) REFERENCES Class(Id),
    StudentID NUMBER(10) REFERENCES Students(Id)
);
INSERT INTO ClassStudentTableRelation (StudentAddress, ClassID, StudentID) VALUES ('Karachi', 1, 2);
INSERT INTO ClassStudentTableRelation (StudentAddress, ClassID, StudentID) VALUES ('Lahore', 2, 3);
INSERT INTO ClassStudentTableRelation (StudentAddress, ClassID, StudentID) VALUES ('Multan', 1, 1);

SELECT * FROM Class;
SELECT * FROM Students;
SELECT * FROM ClassStudentTableRelation;


-- *******************18Stored Procedure*******************

CREATE DATABASE ABC;
-- (Assuming you have already created the "ABC" database)

USE ABC;

CREATE TABLE ABCTutorial(
Id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
Name VARCHAR2(20)
);

--Describe the table
DESCRIBE ABCTutorial;

CREATE PROCEDURE select_all_data
AS
BEGIN
     SELECT * FROM ABCTutorial;
END;
/

EXEC select_all_data;

CREATE PROCEDURE inserted
(
   Name VARCHAR2(30)
)
AS
BEGIN
     INSERT INTO ABCTutorial (Name) VALUES (Name);
END;
/

EXEC inserted('Misbah');
EXEC inserted('Laiba');
EXEC inserted('Harryson');
EXEC inserted('Anas');





USE college;
CREATE TABLE Students (
Student_id INT PRIMARY KEY,
Student_name VARCHAR(100),
gender VARCHAR(10),
age INT,
email VARCHAR(100),
department_id int
);

INSERT INTO Students VALUES
(101,'ARPIT','MALE',23,'arpit@',25),
(102,'DEVANSH','MALE',24,'devansh@',55),
(103,'ROHAN','MALE',24,'rohan@',65),
(104,'SOHAM','MALE',26,'soham@',45);

SELECT*FROM students;


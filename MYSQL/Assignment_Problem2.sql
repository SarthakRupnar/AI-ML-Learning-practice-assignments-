USE college1;
CREATE TABLE Student(roll_no INT PRIMARY KEY,name VARCHAR(20),city VARCHAR(20),marks VARCHAR(20));
INSERT INTO Student(roll_no,name,city,marks) VALUES
(110,"adam","delhi",76),
(108,"bob","mumbai",65),
(124,"casey","pune",94),
(112,"duke","pune",80);
SELECT * FROM Student;
SELECT * FROM Student
WHERE marks > 75;
SELECT DISTINCT city FROM Student;

ALTER TABLE Student 
ADD COLUMN grade varchar(20);

UPDATE Student 
SET grade = "O"
WHERE marks >= 90;

UPDATE Student 
SET grade = "A"
WHERE marks >= 80 AND marks <=90;

UPDATE Student 
SET grade = "B"
WHERE marks >= 70 AND marks <=79;

UPDATE Student 
SET grade = "C"
WHERE marks >= 60 AND marks <=69;

SELECT * FROM Student;
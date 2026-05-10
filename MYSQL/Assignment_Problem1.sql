CREATE DATABASE IF NOT EXISTS College1;
USE College1;
CREATE TABLE Teacher(id INT PRIMARY KEY,name varchar(20),subject varchar(20),salary INT);
INSERT INTO Teacher(id,name,subject,salary) VALUES(23,"ajay","math",50000),(47,"bharat","english",60000),(18,"chetan","chemistry",45000),(9,"divya","physics",75000);
SELECT*FROM Teacher;
SELECT * FROM Teacher
WHERE salary > 55000;
ALTER TABLE Teacher
CHANGE COLUMN salary ctc int;
UPDATE Teacher 
SET ctc = ctc + ctc*0.25;
SET SQL_SAFE_UPDATES = 0;
ALTER TABLE Teacher
ADD COLUMN city varchar(50) DEFAULT "Gurgaon";
ALTER TABLE Teacher
DROP COLUMN ctc;
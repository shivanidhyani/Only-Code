#  Write a SQL query to fetch “FIRST_NAME” from the Student table in upper case and use ALIAS name as STUDENT_NAME.
SELECT UPPER(FIRST_NAME) AS STUDENT_NAME FROM Student;

#2. Write a SQL query to fetch unique values of MAJOR Subjects from Student table.
SELECT DISTINCT(MAJOR) FROM Student;

#3. Write a SQL query to print the first 3 characters of FIRST_NAME from Student table.
SELECT SUBSTRING(FIRST_NAME, 1, 3) FROM Student;

#4. Write a SQL query to find the position of alphabet (‘a’) int the first name column ‘Shivansh’ from Student table.
SELECT INSTR(FIRST_NAME, 'a') FROM Student WHERE FIRST_NAME = 'Shivansh'; 

#5. Write a SQL query that fetches the unique values of MAJOR Subjects from Student table and print its length.
SELECT DISTINCT MAJOR, LENGTH(MAJOR) FROM Student;

#6. Write a SQL query to print FIRST_NAME from the Student table after replacing ‘a’ with ‘A’.
SELECT REPLACE(FIRST_NAME, 'a', 'A') FROM Student;

#7 Write a SQL query to print the FIRST_NAME and LAST_NAME from Student table into single column COMPLETE_NAME.
SELECT CONCAT(FIRST_NAME, ' ',  LAST_NAME) AS COMPLETE_NAME FROM Student;

# 8. Write a SQL query to print all Student details from Student table order by FIRST_NAME Ascending and MAJOR Subject descending .
SELECT * FROM Student ORDER BY FIRST_NAME MAJOR DESC;

#9. Write a SQL query to print details of the Students with the FIRST_NAME as ‘Prem’ and ‘Shivansh’ from Student table.





Q1.     What are SQL operators?
Ans1.   An operator is a reserved word or a character that is used to query our database in a SQL expression. 
        1. Arithmetic Operators:
            Addition (+)
            Subtraction (-)
            Multiplication (*)
            Division (/)
            Modulus (%)
        2. Comparison Operators:
            Equal to (=)
            Not equal to (<> or !=)
            Greater than (>)
            Greater than or equal to (>=)
            Less than (<)
            Less than or equal to (<=)
        3. Logical Operators:
            AND: Returns true if both conditions are true.
            OR: Returns true if either condition is true.
            NOT: Negates the result of a condition.
        4. Bitwise Operators:
            Bitwise AND (&)
            Bitwise OR (|)
            Bitwise XOR (^)
            Bitwise NOT (~)
            Bitwise left shift (<<)
            Bitwise right shift (>>)
        5. Assignment Operator:
            Assigns a value to a variable or column (=)
            Concatenation Operator:
            Concatenates two or more strings (||)
        6. Membership Operators:
            IN: Checks whether a value exists in a set of values.
            NOT IN: Checks whether a value does not exist in a set of values.
Q2.     Write a query to fetch a candidate ID and the first name of all applicants who applied to company XYZ.
Ans2.   SELECT candidate ID, first name FROM CandidateDetails WHERE CompanyId = 'xyz';
Q3.     Which SQL query would you write to fetch various projects from the employee responsibilities table? 
Ans3.   SELECT DISTINCT(projects) FROM employeeresponsibilities;
Q4.     Can you write a query to fetch the number of employees working in project ‘ABC’ from the employee data table?
Ans4.   SELECT COUNT(*) FROM employeedata WHERE project = 'ABC';
Q5.     How would you structure a query to find candidates’ average, maximum, and minimum salaries?
Ans5.   SELECT Avg(Salary), Max(Salary), Min(Salary) FROM CandidateSalary;
        SELECT EmployeeName FROM employeedata WHERE = (SELECT MIN(salary) FROM employeedata);
        SELECT EmployeeName FROM employeedata WHERE = (SELECT MAX(salary) FROM employeedata);
Q6.     Can you write a query to help you find the ID of a candidate whose salary is between $50,000 and $80,000?
Ans6.   SELECT candidateID, Salary FROM employeedata WHERE salary BETWEEN $50000 AND 80000;
Q7.     Which query would you use to fetch candidates who live in London and work for “DEF”?
Ans7.   SELECT * FROM employeedata WHERE City = 'LONDON' AND Company = 'DEF';
Q8.     Which query would you write to fetch all applicants who complete tasks for projects other than “KeyProject2”?
Ans8.   SELECT * FROM employeedata




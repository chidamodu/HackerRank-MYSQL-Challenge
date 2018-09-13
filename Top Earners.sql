We define an employee total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings 
for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number 
of employees who have maximum total earnings. Then print these values as  space-separated integers.
where employee_id is an employee ID number, name is their name, months is the total number of months they have been working 
for the company, and salary is the their monthly salary.

SELECT months * salary AS max_earnings, COUNT(*)
FROM EMPLOYEE
GROUP BY max_earnings
ORDER BY max_earnings DESC LIMIT 1;

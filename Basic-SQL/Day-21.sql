-- Day-21
-- Subqueries 

-- Subquery in where clause (Single value)

select * from employees where salary > ( select AVG(salary) from employees ) ;

-- Subqueries in the where clause (Multiple Values)

select * from employees where department_id 
IN ( select department_id from departments where location_city = 'Banglore' ) ;

-- Subqueries in the FROM clause (derived values)

select department_name , avg_salary 
from ( select department_id , AVG(salary) As avg_salary from employees GROUP BY department_id )
AS avg_salaries JOIN departments ON avg_salaries.department_id = departments.department_id ; 

-- Subqueries in the SELECT clause (scalar subquery)

select first_name , salary , ( select AVG(salary) from employees ) 
AS company_avg_salary from employees ;

-- Correlated subquery : Find employees whose slary is greter than the average salary of their own departments

select * from employees e 
where salary > ( select AVG(salary) from employees where department_id = e.department_id ) ;

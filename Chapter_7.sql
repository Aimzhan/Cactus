/*TASK 1*/

SELECT last_name, hire_date
FROM oehr_employees
WHERE department_id =
                    (SELECT department_id 
                     FROM oehr_employees 
                     WHERE last_name LIKE '&name') 
                     AND last_name <> '&name'

/*TASK 2*/

SELECT employee_id, last_name, salary
FROM oehr_employees
WHERE salary > (SELECT AVG (salary) FROM oehr_employees)
ORDER BY salary

/*TASK 3*/

SELECT employee_id, last_name
FROM oehr_employees
WHERE department_id IN (SELECT department_id FROM oehr_employees WHERE last_name LIKE '%u%')

/*TASK 4*/

SELECT last_name, department_id, job_id
FROM oehr_employees
WHERE department_id IN (SELECT department_id FROM oehr_departments WHERE location_id = 1700)

/*TASK 5*/

SELECT last_name, salary
FROM oehr_employees
WHERE manager_id IN (SELECT employee_id from oehr_employees where last_name='King')

/*TASK 6*/

SELECT last_name, salary
FROM oehr_employees
WHERE manager_id IN (SELECT employee_id from oehr_employees where last_name='King')

/*TASK 7*/

SELECT employee_id, last_name, salary
FROM oehr_employees
WHERE salary > (SELECT AVG (salary) FROM oehr_employees) AND
department_id IN (SELECT department_id FROM oehr_employees WHERE last_name LIKE '%u%')
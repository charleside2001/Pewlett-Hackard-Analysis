-- Deliberable # 1:
-- Create Retirement_titles Table
SELECT employees.emp_no, employees.first_name, employees.last_name, 
			titles.title, titles.from_date, titles.to_date 
INTO retirement_titles
FROM employees
INNER JOIN titles
		ON (employees.emp_no = titles.emp_no)
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Use Dictinct with Orderby to remove duplicate rows - Create unique_titles Table
SELECT DISTINCT ON (emp_no) emp_no , first_name, last_name, 
			title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;	

--Create Retiring_title  Table
SELECT COUNT(emp_no) , title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;


-- Deliverable 2: 
-- The Employees Eligible for the Mentorship Program - Create Mentoship_eligibility Table
SELECT DISTINCT ON (employees.emp_no)employees.emp_no, employees.first_name, employees.last_name, 
			employees.birth_date, dept_emp.from_date, dept_emp.to_date, titles.title
INTO mentorship_eligibilty
FROM employees
INNER JOIN dept_emp
		ON (employees.emp_no = dept_emp.emp_no)
INNER JOIN titles
		ON (employees.emp_no = titles.emp_no)		
WHERE (dept_emp.to_date = ('9999-01-01')) 
AND (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;	

--Create mentor_count table from mentorship_eligibilty
SELECT COUNT(emp_no) , title
INTO mentor_count
FROM mentorship_eligibilty
GROUP BY title
ORDER BY COUNT(emp_no) DESC;
 -- Create younger_employee_count table from employees
SELECT COUNT(emp_no) , gender
INTO younger_employee_count
FROM employees
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
GROUP BY gender
ORDER BY COUNT(emp_no) DESC;
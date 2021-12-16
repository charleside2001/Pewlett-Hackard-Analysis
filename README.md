# Pewlett-Hackard-Analysis 
## Overview of Analysis
This analysis was performed to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program to helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.  

`mentorship_eligibilty.png`

![mentorship_eligibilty.png](https://github.com/charleside2001/Pewlett-Hackard-Analysis/blob/main/Screenshots/mentorship_eligibilty.PNG)


`retirement_titles.png`

![retirement_titles.png](https://github.com/charleside2001/Pewlett-Hackard-Analysis/blob/main/Screenshots/retirement_titles.PNG)


`unique_titles.png`

![unique_titles.png](https://github.com/charleside2001/Pewlett-Hackard-Analysis/blob/main/Screenshots/unique_titles.PNG)

`retiring_titles.png`

![retiring_titles.png](https://github.com/charleside2001/Pewlett-Hackard-Analysis/blob/main/Screenshots/retiring_titles.PNG)

## Results
 * 29414 senior engineers are retiring compared to 169 engineers on the mentorship list 
  
 * 14222 engineers are retiring compared to 501 engineers on the mentorship list 
 
 * 28254  senior staff are retiring compared to 569 senior staff on the mentorship list 
 
 * 12243 staff are retiring compared to 155 staff on the mentorship list 
 
 * .4502   technical leaders are leaving compared to 77 technical leaders on the mentorship list 
 
 `retiring_titles.png` 
 
 ![retiring_titles.png](https://github.com/charleside2001/Pewlett-Hackard-Analysis/blob/main/Screenshots/retiring_titles.PNG)
 
 
 ## Summary
Two additional queried were added to help answer the questions below;  


`Create mentor_count table from mentorship_eligibilty`

`SELECT COUNT(emp_no) , title     
INTO mentor_count   
FROM mentorship_eligibilty   
GROUP BY title  
ORDER BY COUNT(emp_no) DESC;`

  `Create younger_employee_count table from employees`
 
`(SELECT COUNT(emp_no) , gender  
INTO younger_employee_count  
FROM employees  
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')   
GROUP BY gender 
ORDER BY COUNT(emp_no) DESC;)`



* How many employees have birthdays in 1965?

    * Adding the male and female count from the on the younger_employee_count table shows that there only   1940 employee born in 1960 who will be in the mentorship list.   
    
`younger_employee_count.png` 
 
 ![younger_employee_count.png](https://github.com/charleside2001/Pewlett-Hackard-Analysis/blob/main/Screenshots/younger_employee_count.PNG)
 
 * How does retiring_title table compare to the mentor_count table?
    * The answer to this question is that there is a brain drain from having more experienced employee leaving the company compared with the younger mentors.

`retiring_titles.png` 
 
 ![retiring_titles.png](https://github.com/charleside2001/Pewlett-Hackard-Analysis/blob/main/Screenshots/retiring_titles.PNG)
 
 
 `mentor_count.png` 
 
 ![mentor_count.png](https://github.com/charleside2001/Pewlett-Hackard-Analysis/blob/main/Screenshots/mentor_count.PNG)



`web link for this analysis`

![`web link for this analysis`](https://github.com/charleside2001/Pewlett-Hackard-Analysis.git)

 
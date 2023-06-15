# Pewlett-Hackard Employee Database to SQL

**Programming Languages Used:** SQL, QuickDBD

## Purpose

The purpose of this project is to translate decades of employee data stored in CSV format into a SQL database, and perform data analysis. Pewlett-Hackard is a fictional company. 

## Process

The steps to load the csv files into SQL are as follows:

1. Data Modeling
2. Data Engineering
3. Data Analysis

### Data Modeling

I examined the CSV of employee data and created an Entity Relationship Diagram (ERD) using QuickDBD. The ERD represents the relationship between the tables (i.e. csvs). 

<img src="https://github.com/geyo/sql-challenge/blob/main/EmployeeSQL/ERD.png" alt="Image" width="500" height="400">
  
### Data Engineering

I created a table schema for each of the CSV files, and identified the primary keys, foreign keys, and other constraints. Then I loaded the tables into SQL. It is important to sequence the order of the tables so as not to comprise the key dependencies. The following sequence was used: 
1. departments
2. titles
3. employees
4. dept_manager
5. salaries
6. dept_emp

### Data Analysis

Once the tables were loaded, I used SQL to create the following lists:

- Employee number, last name, first name, sex, and salary of each employee
- First name, last name, and hire date for the employees who were hired in 1986
- Manager of each department along with their department number, department name, employee number, last name, and first name
- Department number for each employee along with that employee’s employee number, last name, first name, and department name
- First name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
- Each employee in the Sales department, including their employee number, last name, and first name
- Each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
- Frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

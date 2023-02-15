
--department table
CREATE TABLE departments (
    dept_no varchar(4) NOT NULL,
    dept_name varchar(50) NOT NULL,
    PRIMARY KEY (dept_no)
);

--titles table
CREATE TABLE titles (
    title_id varchar(5) NOT NULL,
    title varchar(50) NOT NULL,
    PRIMARY KEY (title_id)
);

--employee table
CREATE TABLE employees (
    emp_no INTEGER NOT NULL,
 	emp_title_id VARCHAR(5) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no)
);


--dept manager table
CREATE TABLE dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INTEGER NOT NULL,
    PRIMARY KEY (dept_no, emp_no)
);



--employee salary table
CREATE TABLE salaries (
    emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary INTEGER NOT NULL
);



--Junction table for employee and dept
CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

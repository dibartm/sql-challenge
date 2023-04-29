select * from employees ;
select first_name, last_name, hire_date from employees where hire_date >= '1986-01-01'
and hire_date <= '1986-12-31' ;
select employees.emp_no, departments.dept_no, first_name, last_name, dept_name  from dept_manager join employees on dept_manager.emp_no= employees.emp_no join departments on dept_manager.dept_no=departments.dept_no ;
select departments.dept_no, employees.emp_no, first_name, last_name, dept_name from departments join dept_emp on departments.dept_no= dept_emp.dept_no join employees on dept_emp.emp_no=employees.emp_no ;
select employees.emp_no, first_name, last_name, sex from employees where first_name ='Hercules' and last_name like 'B%' ;
select employees.emp_no, first_name, last_name from employees join dept_emp on dept_emp.emp_no = employees.emp_no join departments on dept_emp.dept_no= departments.dept_no where departments.dept_name = 'Sales' ;
select employees.emp_no, first_name, last_name from employees join dept_emp on dept_emp.emp_no = employees.emp_no join departments on dept_emp.dept_no= departments.dept_no where departments.dept_name = 'Sales' or departments.dept_name='Development' ;
select last_name, count (last_name) from employees group by last_name order by count desc ;
SELECT max(e.hire_date)
from EMPLOYEES e;

-- 01
select first_name, d.DEPARTMENT_NAME
from EMPLOYEES e, DEPARTMENTS d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID
and hire_date = (
	SELECT max(e.hire_date)
	from EMPLOYEES e
);

-- 02
select e.employee_id, e.last_name, e.first_name, e.DEPARTMENT_ID, e.SALARY, b.avg_salary
from EMPLOYEES e, (
	select department_id, avg(salary) as avg_salary
	from EMPLOYEES 
	group by department_id 
	) b
where e.DEPARTMENT_ID = b.department_id
	and e.SALARY > b.avg_salary
order by e.DEPARTMENT_ID
;

select * 
from EMPLOYEES e
where e.DEPARTMENT_ID = (
	select e1.DEPARTMENT_ID
	from EMPLOYEES e1
) 
;

-- 03
select e1.employee_id, e1.FIRST_NAME, e1.LAST_NAME, j.JOB_TITLE, avg_salary
from EMPLOYEES e1, (
	select department_id, avg(salary) as avg_salary
	from EMPLOYEES
	group by department_id
) e2, JOBS j
where e1.DEPARTMENT_ID = e2.department_id
and j.JOB_ID = e1.JOB_ID
and avg_salary = (
	select max(avg(salary))
	from EMPLOYEES 
	group by department_id
)
;

-- 03 having절을 이용해
select max(avg(salary))
from employees
group by department_id;

select *
from EMPLOYEES e
group by e.department_id
having avg(salary) = (
	select max(avg(salary))
	from employees
	group by department_id
);

-- 04
select  max(avg(e.salary))
from EMPLOYEES e
group by e.department_id
;

select d.DEPARTMENT_NAME
from departments d
where  d.DEPARTMENT_ID = (
		select e.department_id
		from EMPLOYEES e
		group by e.department_id
		having avg(e.salary) = (
			select  max(avg(e.salary))
			from EMPLOYEES e
			group by e.department_id
		)
)
;

select *  --d.department_name
from DEPARTMENTS d, EMPLOYEES e;
-- group by

-- 05
select j.job_title
from jobs j, (
	select job_id, avg(salary)
	from employees
	group by job_id
	having avg(salary) = (
		select max(avg(salary))
		from EMPLOYEES
		group by job_id
	) 
) b
where j.job_id = b.job_id;

-- 06
select max(avg(salary))
from EMPLOYEES
group by job_id
;

select job_id, avg(salary)
from employees
group by job_id
having avg(salary) = (
	select max(avg(salary))
	from EMPLOYEES
	group by job_id
)
;

select j.job_title
from jobs j, (
	select job_id, avg(salary)
	from employees
	group by job_id
	having avg(salary) = (
		select max(avg(salary))
		from EMPLOYEES
		group by job_id
	) 
) b
where j.job_id = b.job_id;
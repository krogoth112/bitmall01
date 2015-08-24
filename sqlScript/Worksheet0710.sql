--FROM �뜝�럩�읉�뜝�럥�뱺 �뜝�럩肉녑뜝�럥裕� SUB QUERY
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES e
WHERE (DEPARTMENT_ID, SALARY) IN (
	SELECT e.DEPARTMENT_ID, MAX(SALARY)
	FROM EMPLOYEES e
	WHERE e.DEPARTMENT_ID IS NOT NULL 
	GROUP BY e.DEPARTMENT_ID 
	);
-- FROM�뜝�럩�읉�뜝�럥�뱺 �뜝�럩肉녑뜝�럥裕� SUBQUERY (JOIN)
SELECT *
FROM EMPLOYEES A,(
	SELECT E.DEPARTMENT_ID, 
	MAX(SALARY) AS MAX_SALARY
	FROM EMPLOYEES e
	WHERE e.DEPARTMENT_ID IS NOT NULL 
	GROUP BY e.DEPARTMENT_ID) B 
WHERE A.DEPARTMENT_ID = B.DEPARTMENT_ID
	AND A.SALARY = B.MAX_SALARY;

--CORELATED QUERY
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES OUTER 
WHERE SALARY = ( 
	SELECT MAX(SALARY)
	FROM EMPLOYEES
	WHERE OUTER.DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID
	);				
	
--RANK 愿��젴 �븿�닔
select e.FIRST_NAME, e.SALARY, row_number() over ( order by salary desc ) as row_number
from EMPLOYEES e;
-- Active: 1750240490853@@127.0.0.1@5432@ph@public
SELECT * FROM employees;
SELECT count(*) FROM employees;

CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
as
$$
    SELECT count(*) FROM employees;
$$

SELECT emp_count();
CREATE or REPLACE Function delete_emp()
RETURNS void
LANGUAGE SQL
as
$$
    DELETE FROM employees WHERE employee_id = 30;
$$;

SELECT delete_emp();

CREATE or REPLACE Function delete_emp_by_id(p_emp_id int)
RETURNS void
LANGUAGE SQL
as
$$
    DELETE FROM employees WHERE employee_id = p_emp_id;
$$;

SELECT delete_emp_by_id(25);
use skill_matrix;
/* subqueries with select statement*/
select * from employees where Salary = (select max(Salary) from employees);
select EmpName,Dept,Salary from employees where Salary < (select avg(salary) from employees);


/* subquery with insert statement*/
insert into orders 
select prod_id,item,sell_price from products where prod_id in
(select prod_id from products where sell_price > 1000);
select * from orders;

/* subquery with update statement*/
select * from employees;
update employees
set salary = salary * 0.50
where age in (select age from employees_t where age>=27);


/*subquery with delete statement*/
delete from employees
where age in (select age from employees_t where age<27);
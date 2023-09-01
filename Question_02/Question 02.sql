select * from test.salaries;

insert into test.salaries values ('develop',11,5200);
insert into test.salaries values ('develop',7,4200);
insert into test.salaries values ('develop',9,4500);
insert into test.salaries values ('develop',8,6000);
insert into test.salaries values ('develop',10,5200);
insert into test.salaries values ('personnel',5,3500);
insert into test.salaries values ('personnel',2,3900);
insert into test.salaries values ('sales',3,4800);
insert into test.salaries values ('sales',1,5000);
insert into test.salaries values ('sales',4,4800);

-- Query to get the `empno` with the highest salary
select empno,salary from test.salaries
order by salary desc 
limit 1;
# CREATE TABLE EMP #

mysql> create table emp(emp_no int primary key,ename varchar(40),sal decimal(10,1),hire_date date,commission int,dept_no int,mgr int,foreign key(dept_no) references dept(dept_no) on delete set null,foreign key(mgr) references emp(emp_no) on delete set null);
Query OK, 0 rows affected (2.24 sec)

mysql> insert into emp values(1001,'sachin',19000,'1980-01-01',2100,null,null);
Query OK, 1 row affected (0.27 sec)

mysql> insert into emp values(1002,'kapil',15000,'1970-01-01',2300,null,null);
Query OK, 1 row affected (0.07 sec)

mysql> insert into emp values(1003,'stefen',12000,'1990-01-01',500,null,null);
Query OK, 1 row affected (0.10 sec)

mysql> insert into emp values(1004,'williams',9000,'2001-01-01',null,null,null);
Query OK, 1 row affected (0.08 sec)

mysql> insert into emp values(1005,'john',5000,'2005-01-01',null,null,null);
Query OK, 1 row affected (0.04 sec)

mysql> insert into emp values(1006,'dravid',19000,'1985-01-01',2400,null,null);
Query OK, 1 row affected (0.07 sec)

mysql> insert into emp values(1007,'martin',21000,'2000-01-01',1040,null,null);
Query OK, 1 row affected (0.06 sec)

mysql> update emp set dept_no=10 where emp_no=1001;
Query OK, 1 row affected (0.18 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set dept_no=20 where emp_no=1001;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set dept_no=10 where emp_no=1002;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set dept_no=20 where emp_no=1003;
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set dept_no=30 where emp_no=1004;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set dept_no=30 where emp_no=1005;
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set dept_no=10 where emp_no=1006;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set mgr=1003 where emp_no=1001;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set mgr=1003 where emp_no=1002;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set mgr=1007 where emp_no=1003;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set mgr=1007 where emp_no=1004;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set mgr=1007 where emp_no=1006;
Query OK, 1 row affected (0.10 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set mgr=1006 where emp_no=1005;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+--------+----------+---------+------------+------------+---------+------+
| emp_no | ename    | sal     | hire_date  | commission | dept_no | mgr  |
+--------+----------+---------+------------+------------+---------+------+
|   1001 | sachin   | 19000.0 | 1980-01-01 |       2100 |      20 | 1003 |
|   1002 | kapil    | 15000.0 | 1970-01-01 |       2300 |      10 | 1003 |
|   1003 | stefen   | 12000.0 | 1990-01-01 |        500 |      20 | 1007 |
|   1004 | williams |  9000.0 | 2001-01-01 |       NULL |      30 | 1007 |
|   1005 | john     |  5000.0 | 2005-01-01 |       NULL |      30 | 1006 |
|   1006 | dravid   | 19000.0 | 1985-01-01 |       2400 |      10 | 1007 |
|   1007 | martin   | 21000.0 | 2000-01-01 |       1040 |    NULL | NULL |
+--------+----------+---------+------------+------------+---------+------+

 
                  
# CREATE TABLE DEPT #

mysql> create table dept(dept_no int primary key,dname varchar(30),loc varchar(30));
Query OK, 0 rows affected (0.81 sec)

mysql> insert into dept values(10,'accounts','bangalore');
Query OK, 1 row affected (0.16 sec)

mysql> insert into dept values(20,'it','delhi');
Query OK, 1 row affected (0.06 sec)

mysql> insert into dept values(30,'production','chennai');
Query OK, 1 row affected (0.07 sec)

mysql> insert into dept values(40,'sales','hyd');
Query OK, 1 row affected (0.07 sec)

mysql> insert into dept values(50,'admin','londan');
Query OK, 1 row affected (0.08 sec)

mysql> select * from dept;
+---------+------------+-----------+
| dept_no | dname      | loc       |
+---------+------------+-----------+
|      10 | accounts   | bangalore |
|      20 | it         | delhi     |
|      30 | production | chennai   |
|      40 | sales      | hyd       |
|      50 | admin      | londan    |
+---------+------------+-----------+



# Q1 #

mysql> select * from emp where dept_no=10 or dept_no=30;
+--------+----------+---------+------------+------------+---------+------+
| emp_no | ename    | sal     | hire_date  | commission | dept_no | mgr  |
+--------+----------+---------+------------+------------+---------+------+
|   1002 | kapil    | 15000.0 | 1970-01-01 |       2300 |      10 | 1003 |
|   1006 | dravid   | 19000.0 | 1985-01-01 |       2400 |      10 | 1007 |
|   1004 | williams |  9000.0 | 2001-01-01 |       NULL |      30 | 1007 |
|   1005 | john     |  5000.0 | 2005-01-01 |       NULL |      30 | 1006 |
+--------+----------+---------+------------+------------+---------+------+

                            
# Q2 #

mysql> select * from dept where dept_no in(select dept_no from emp group by dept_no having count(*)>1);
+---------+------------+-----------+
| dept_no | dname      | loc       |
+---------+------------+-----------+
|      10 | accounts   | bangalore |
|      20 | it         | delhi     |
|      30 | production | chennai   |
+---------+------------+-----------+

 
# Q3 #

mysql> select * from emp where ename like 's%';
+--------+--------+---------+------------+------------+---------+------+
| emp_no | ename  | sal     | hire_date  | commission | dept_no | mgr  |
+--------+--------+---------+------------+------------+---------+------+
|   1001 | sachin | 19000.0 | 1980-01-01 |       2100 |      20 | 1003 |
|   1003 | stefen | 12000.0 | 1990-01-01 |        500 |      20 | 1007 |
+--------+--------+---------+------------+------------+---------+------+

         
# Q4 #

mysql> select * from emp where timestampdiff(year,hire_date,current_date)>2;
+--------+----------+---------+------------+------------+---------+------+
| emp_no | ename    | sal     | hire_date  | commission | dept_no | mgr  |
+--------+----------+---------+------------+------------+---------+------+
|   1001 | sachin   | 19000.0 | 1980-01-01 |       2100 |      20 | 1003 |
|   1002 | kapil    | 15000.0 | 1970-01-01 |       2300 |      10 | 1003 |
|   1003 | stefen   | 12000.0 | 1990-01-01 |        500 |      20 | 1007 |
|   1004 | williams |  9000.0 | 2001-01-01 |       NULL |      30 | 1007 |
|   1005 | john     |  5000.0 | 2005-01-01 |       NULL |      30 | 1006 |
|   1006 | dravid   | 19000.0 | 1985-01-01 |       2400 |      10 | 1007 |
|   1007 | martin   | 21000.0 | 2000-01-01 |       1040 |    NULL | NULL |
+--------+----------+---------+------------+------------+---------+------+

                              
# Q5 #

mysql> select ename,replace(ename,'a','#') from emp;
+----------+------------------------+
| ename    | replace(ename,'a','#') |
+----------+------------------------+
| sachin   | s#chin                 |
| kapil    | k#pil                  |
| stefen   | stefen                 |
| williams | willi#ms               |
| john     | john                   |
| dravid   | dr#vid                 |
| martin   | m#rtin                 |
+----------+------------------------+


# Q6 #

mysql> select e.ename,m.ename as manger_name from emp e inner join emp m on m.emp_no=e.mgr;
+----------+-------------+
| ename    | manger_name |
+----------+-------------+
| sachin   | stefen      |
| kapil    | stefen      |
| stefen   | martin      |
| williams | martin      |
| john     | dravid      |
| dravid   | martin      |
+----------+-------------+

                           
# Q7 #

mysql> select d.dname,sum(e.sal) as total_sal from emp e,dept d where e.dept_no=d.dept_no group by d.dname;
+------------+-----------+
| dname      | total_sal |
+------------+-----------+
| accounts   |   34000.0 |
| it         |   31000.0 |
| production |   14000.0 |
+------------+-----------+

 
# Q8 #

mysql> select * from emp e,dept d where e.dept_no=d.dept_no;
+--------+----------+---------+------------+------------+---------+------+---------+------------+-----------+
| emp_no | ename    | sal     | hire_date  | commission | dept_no | mgr  | dept_no | dname      | loc       |
+--------+----------+---------+------------+------------+---------+------+---------+------------+-----------+
|   1002 | kapil    | 15000.0 | 1970-01-01 |       2300 |      10 | 1003 |      10 | accounts   | bangalore |
|   1006 | dravid   | 19000.0 | 1985-01-01 |       2400 |      10 | 1007 |      10 | accounts   | bangalore |
|   1001 | sachin   | 19000.0 | 1980-01-01 |       2100 |      20 | 1003 |      20 | it         | delhi     |
|   1003 | stefen   | 12000.0 | 1990-01-01 |        500 |      20 | 1007 |      20 | it         | delhi     |
|   1004 | williams |  9000.0 | 2001-01-01 |       NULL |      30 | 1007 |      30 | production | chennai   |
|   1005 | john     |  5000.0 | 2005-01-01 |       NULL |      30 | 1006 |      30 | production | chennai   |
+--------+----------+---------+------------+------------+---------+------+---------+------------+-----------+


# Q9 #

mysql> update emp set sal=sal+(sal*10/100);
Query OK, 7 rows affected (0.08 sec)
Rows matched: 7  Changed: 7  Warnings: 0

mysql> select * from emp;
+--------+----------+---------+------------+------------+---------+------+
| emp_no | ename    | sal     | hire_date  | commission | dept_no | mgr  |
+--------+----------+---------+------------+------------+---------+------+
|   1001 | sachin   | 20900.0 | 1980-01-01 |       2100 |      20 | 1003 |
|   1002 | kapil    | 16500.0 | 1970-01-01 |       2300 |      10 | 1003 |
|   1003 | stefen   | 13200.0 | 1990-01-01 |        500 |      20 | 1007 |
|   1004 | williams |  9900.0 | 2001-01-01 |       NULL |      30 | 1007 |
|   1005 | john     |  5500.0 | 2005-01-01 |       NULL |      30 | 1006 |
|   1006 | dravid   | 20900.0 | 1985-01-01 |       2400 |      10 | 1007 |
|   1007 | martin   | 23100.0 | 2000-01-01 |       1040 |    NULL | NULL |
+--------+----------+---------+------------+------------+---------+------+


# Q10 #

mysql> delete from emp where dept_no=(select dept_no from dept where loc='chennai');
Query OK, 2 rows affected (0.09 sec)

mysql> select * from emp;
+--------+--------+---------+------------+------------+---------+------+
| emp_no | ename  | sal     | hire_date  | commission | dept_no | mgr  |
+--------+--------+---------+------------+------------+---------+------+
|   1001 | sachin | 20900.0 | 1980-01-01 |       2100 |      20 | 1003 |
|   1002 | kapil  | 16500.0 | 1970-01-01 |       2300 |      10 | 1003 |
|   1003 | stefen | 13200.0 | 1990-01-01 |        500 |      20 | 1007 |
|   1006 | dravid | 20900.0 | 1985-01-01 |       2400 |      10 | 1007 |
|   1007 | martin | 23100.0 | 2000-01-01 |       1040 |    NULL | NULL |
+--------+--------+---------+------------+------------+---------+------+


# Q11 #

mysql> select ename,(sal+commission) as gross_salary from emp;
+--------+--------------+
| ename  | gross_salary |
+--------+--------------+
| sachin |      23000.0 |
| kapil  |      18800.0 |
| stefen |      13700.0 |
| dravid |      23300.0 |
| martin |      24140.0 |
+--------+--------------+


# Q12 #

mysql> alter table emp modify ename varchar(100);
Query OK, 5 rows affected (0.78 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> describe emp;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| emp_no     | int           | NO   | PRI | NULL    |       |
| ename      | varchar(100)  | YES  |     | NULL    |       |
| sal        | decimal(10,1) | YES  |     | NULL    |       |
| hire_date  | date          | YES  |     | NULL    |       |
| commission | int           | YES  |     | NULL    |       |
| dept_no    | int           | YES  | MUL | NULL    |       |
| mgr        | int           | YES  | MUL | NULL    |       |
+------------+---------------+------+-----+---------+-------+


# Q13 #

mysql> select current_timestamp;
+---------------------+
| current_timestamp   |
+---------------------+
| 2022-11-20 14:46:30 |
+---------------------+


# Q14 #

mysql> create table student(roll_no int primary key,last_name varchar(20)not null,first_name varchar(20)not null,birth_date date,state varchar(20),city varchar(20),constraint uk_student unique(last_name,first_name));
Query OK, 0 rows affected (0.19 sec)

mysql> describe student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| roll_no    | int         | NO   | PRI | NULL    |       |
| last_name  | varchar(20) | NO   | MUL | NULL    |       |
| first_name | varchar(20) | NO   |     | NULL    |       |
| birth_date | date        | YES  |     | NULL    |       |
| state      | varchar(20) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+


# Q15 #

mysql> select count(sal)as no_of_employees from emp where sal>10000;
+-----------------+
| no_of_employees |
+-----------------+
|               5 |
+-----------------+


# Q16 #

mysql> select min(sal)as 'minimum_salary',max(sal)as 'maximum_salary',avg(sal)as 'average_salary' from emp;
+----------------+----------------+----------------+
| minimum_salary | maximum_salary | average_salary |
+----------------+----------------+----------------+
|        13200.0 |        23100.0 |    18920.00000 |
+----------------+----------------+----------------+


# Q17 #

mysql> select d.loc,count(e.emp_no)as 'no_of_employee' from emp e,dept d where e.dept_no=d.dept_no group by d.loc;
+-----------+----------------+
| loc       | no_of_employee |
+-----------+----------------+
| bangalore |              2 |
| delhi     |              2 |
+-----------+----------------+


# Q18 #

mysql> select ename from emp order by ename desc;
+--------+
| ename  |
+--------+
| stefen |
| sachin |
| martin |
| kapil  |
| dravid |
+--------+


# Q19 #

mysql> create table emp_bkp as select * from emp;
Query OK, 5 rows affected (0.58 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from emp_bkp;
+--------+--------+---------+------------+------------+---------+------+
| emp_no | ename  | sal     | hire_date  | commission | dept_no | mgr  |
+--------+--------+---------+------------+------------+---------+------+
|   1001 | sachin | 20900.0 | 1980-01-01 |       2100 |      20 | 1003 |
|   1002 | kapil  | 16500.0 | 1970-01-01 |       2300 |      10 | 1003 |
|   1003 | stefen | 13200.0 | 1990-01-01 |        500 |      20 | 1007 |
|   1006 | dravid | 20900.0 | 1985-01-01 |       2400 |      10 | 1007 |
|   1007 | martin | 23100.0 | 2000-01-01 |       1040 |    NULL | NULL |
+--------+--------+---------+------------+------------+---------+------+


# Q20 #

mysql> select substring(ename,1,3)as ename,sal from emp;
+-------+---------+
| ename | sal     |
+-------+---------+
| sac   | 20900.0 |
| kap   | 16500.0 |
| ste   | 13200.0 |
| dra   | 20900.0 |
| mar   | 23100.0 |
+-------+---------+


# Q21 #

mysql> select * from emp where ename like 's%';
+--------+--------+---------+------------+------------+---------+------+
| emp_no | ename  | sal     | hire_date  | commission | dept_no | mgr  |
+--------+--------+---------+------------+------------+---------+------+
|   1001 | sachin | 20900.0 | 1980-01-01 |       2100 |      20 | 1003 |
|   1003 | stefen | 13200.0 | 1990-01-01 |        500 |      20 | 1007 |
+--------+--------+---------+------------+------------+---------+------+


# Q22 #

mysql> select * from emp where dept_no=(select dept_no from dept where loc='bangalore');
+--------+--------+---------+------------+------------+---------+------+
| emp_no | ename  | sal     | hire_date  | commission | dept_no | mgr  |
+--------+--------+---------+------------+------------+---------+------+
|   1002 | kapil  | 16500.0 | 1970-01-01 |       2300 |      10 | 1003 |
|   1006 | dravid | 20900.0 | 1985-01-01 |       2400 |      10 | 1007 |
+--------+--------+---------+------------+------------+---------+------+


# Q23 #

mysql> select * from emp where ename between 'a%' and 'k%';
+--------+--------+---------+------------+------------+---------+------+
| emp_no | ename  | sal     | hire_date  | commission | dept_no | mgr  |
+--------+--------+---------+------------+------------+---------+------+
|   1006 | dravid | 20900.0 | 1985-01-01 |       2400 |      10 | 1007 |
+--------+--------+---------+------------+------------+---------+------+


# Q24 #

mysql> select * from emp e,emp m where e.mgr=m.emp_no and m.ename='stefen';
+--------+--------+---------+------------+------------+---------+------+--------+--------+---------+------------+------------+---------+------+
| emp_no | ename  | sal     | hire_date  | commission | dept_no | mgr  | emp_no | ename  | sal     | hire_date  | commission | dept_no | mgr  |
+--------+--------+---------+------------+------------+---------+------+--------+--------+---------+------------+------------+---------+------+
|   1001 | sachin | 20900.0 | 1980-01-01 |       2100 |      20 | 1003 |   1003 | stefen | 13200.0 | 1990-01-01 |        500 |      20 | 1007 |
|   1002 | kapil  | 16500.0 | 1970-01-01 |       2300 |      10 | 1003 |   1003 | stefen | 13200.0 | 1990-01-01 |        500 |      20 | 1007 |
+--------+--------+---------+------------+------------+---------+------+--------+--------+---------+------------+------------+---------+------+


# Q25 #

mysql> select m.ename,count(*) from emp w,emp m where w.mgr=m.emp_no group by m.ename having count(*)=(select max(my_count)from (select count(*) my_count from emp group by mgr)a);
+--------+----------+
| ename  | count(*) |
+--------+----------+
| stefen |        2 |
| martin |        2 |
+--------+----------+


# Q26 #

mysql> select * from emp where emp_no in(select emp_no from emp where sal=(select max(sal) from emp where sal < (select max(sal) from emp)));
+--------+--------+---------+------------+------------+---------+------+
| emp_no | ename  | sal     | hire_date  | commission | dept_no | mgr  |
+--------+--------+---------+------------+------------+---------+------+
|   1001 | sachin | 20900.0 | 1980-01-01 |       2100 |      20 | 1003 |
|   1006 | dravid | 20900.0 | 1985-01-01 |       2400 |      10 | 1007 |
+--------+--------+---------+------------+------------+---------+------+


# Q27 #

mysql> select * from emp where emp_no in (select mgr from emp);
+--------+--------+---------+------------+------------+---------+------+
| emp_no | ename  | sal     | hire_date  | commission | dept_no | mgr  |
+--------+--------+---------+------------+------------+---------+------+
|   1003 | stefen | 13200.0 | 1990-01-01 |        500 |      20 | 1007 |
|   1007 | martin | 23100.0 | 2000-01-01 |       1040 |    NULL | NULL |
+--------+--------+---------+------------+------------+---------+------+


# Q28 #

mysql> select e.ename,m.ename as 'manger_name',timestampdiff(year,e.hire_date,current_date) as 'experience' from emp m,emp e where m.emp_no=e.mgr;
+--------+-------------+------------+
| ename  | manger_name | experience |
+--------+-------------+------------+
| sachin | stefen      |         42 |
| kapil  | stefen      |         52 |
| stefen | martin      |         32 |
| dravid | martin      |         37 |
+--------+-------------+------------+


# Q29 #

mysql> select * from emp as emp inner join emp as mang on emp.mgr=mang.emp_no where emp.commission < 1000;
+--------+--------+---------+------------+------------+---------+------+--------+--------+---------+------------+------------+---------+------+
| emp_no | ename  | sal     | hire_date  | commission | dept_no | mgr  | emp_no | ename  | sal     | hire_date  | commission | dept_no | mgr  |
+--------+--------+---------+------------+------------+---------+------+--------+--------+---------+------------+------------+---------+------+
|   1003 | stefen | 13200.0 | 1990-01-01 |        500 |      20 | 1007 |   1007 | martin | 23100.0 | 2000-01-01 |       1040 |    NULL | NULL |
+--------+--------+---------+------------+------------+---------+------+--------+--------+---------+------------+------------+---------+------+


# Q30 #

mysql> select * from emp where hire_date < (select hire_date from emp where ename='martin');
+--------+--------+---------+------------+------------+---------+------+
| emp_no | ename  | sal     | hire_date  | commission | dept_no | mgr  |
+--------+--------+---------+------------+------------+---------+------+
|   1001 | sachin | 20900.0 | 1980-01-01 |       2100 |      20 | 1003 |
|   1002 | kapil  | 16500.0 | 1970-01-01 |       2300 |      10 | 1003 |
|   1003 | stefen | 13200.0 | 1990-01-01 |        500 |      20 | 1007 |
|   1006 | dravid | 20900.0 | 1985-01-01 |       2400 |      10 | 1007 |
+--------+--------+---------+------------+------------+---------+------+

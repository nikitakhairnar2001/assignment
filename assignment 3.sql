# CREATE TABLE CUSTOMER #

mysql> create table customer(customer_id int primary key,customer_name varchar(20));
Query OK, 0 rows affected (1.79 sec)

mysql> insert into customer values(1,'john');
Query OK, 1 row affected (0.14 sec)

mysql> insert into customer values(2,'smith');
Query OK, 1 row affected (0.08 sec)

mysql> insert into customer values(3,'ricky');
Query OK, 1 row affected (0.06 sec)

mysql> insert into customer values(4,'waish');
Query OK, 1 row affected (0.07 sec)

mysql> insert into customer values(5,'stefen');
Query OK, 1 row affected (0.06 sec)

mysql> insert into customer values(6,'fleming');
Query OK, 1 row affected (0.07 sec)

mysql> insert into customer values(7,'thomson');
Query OK, 1 row affected (0.06 sec)

mysql> insert into customer values(8,'david');
Query OK, 1 row affected (0.06 sec)

mysql> select * from customer;
+-------------+---------------+
| customer_id | customer_name |
+-------------+---------------+
|           1 | john          |
|           2 | smith         |
|           3 | ricky         |
|           4 | waish         |
|           5 | stefen        |
|           6 | fleming       |
|           7 | thomson       |
|           8 | david         |
+-------------+---------------+


# CREATE TABLE PRODUCT #

mysql> create table product(product_id int primary key,product_name varchar(40),product_price decimal(10,2));
Query OK, 0 rows affected (0.25 sec)

mysql> insert into product values(1,'television',19000);
Query OK, 1 row affected (0.11 sec)

mysql> insert into product values(2,'dvd',3600);
Query OK, 1 row affected (0.06 sec)

mysql> insert into product values(3,'washing machine',7600);
Query OK, 1 row affected (0.05 sec)

mysql> insert into product values(4,'computer',35900);
Query OK, 1 row affected (0.03 sec)

mysql> insert into product values(5,'ipod',3210);
Query OK, 1 row affected (0.04 sec)

mysql> insert into product values(6,'panasonic phone',2100);
Query OK, 1 row affected (0.08 sec)

mysql> insert into product values(7,'chair',360);
Query OK, 1 row affected (0.06 sec)

mysql> insert into product values(8,'table',490);
Query OK, 1 row affected (0.07 sec)

mysql> insert into product values(9,'sound system',12050);
Query OK, 1 row affected (0.06 sec)

mysql> insert into product values(10,'home theatre',19350);
Query OK, 1 row affected (0.07 sec)

mysql> select * from product;
+------------+-----------------+---------------+
| product_id | product_name    | product_price |
+------------+-----------------+---------------+
|          1 | television      |      19000.00 |
|          2 | dvd             |       3600.00 |
|          3 | washing machine |       7600.00 |
|          4 | computer        |      35900.00 |
|          5 | ipod            |       3210.00 |
|          6 | panasonic phone |       2100.00 |
|          7 | chair           |        360.00 |
|          8 | table           |        490.00 |
|          9 | sound system    |      12050.00 |
|         10 | home theatre    |      19350.00 |
+------------+-----------------+---------------+


# CREATE TABLE ORDER #

mysql> create table orders(order_id int primary key,customer_id int,ordered_date date);
Query OK, 0 rows affected (0.26 sec)

mysql> alter table orders add foreign key(customer_id) references customer(customer_id) on delete set null;
Query OK, 0 rows affected (0.99 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into orders values(1,null,'2005/01/10');
Query OK, 1 row affected, 1 warning (0.12 sec)

mysql> insert into orders values(2,null,'2006/02/10');
Query OK, 1 row affected, 1 warning (0.05 sec)

mysql> insert into orders values(3,null,'2005/03/20');
Query OK, 1 row affected, 1 warning (0.08 sec)

mysql> insert into orders values(4,3,'2006/03/10');
Query OK, 1 row affected, 1 warning (0.10 sec)

mysql> insert into orders values(5,1,'2007/04/05');
Query OK, 1 row affected, 1 warning (0.06 sec)

mysql> insert into orders values(6,7,'2006/12/13');
Query OK, 1 row affected, 1 warning (0.07 sec)

mysql> insert into orders values(7,6,'2008/03/13');
Query OK, 1 row affected, 1 warning (0.04 sec)

mysql> insert into orders values(8,6,'2004/11/29');
Query OK, 1 row affected, 1 warning (0.10 sec)

mysql> insert into orders values(9,5,'2005/01/13');
Query OK, 1 row affected, 1 warning (0.07 sec)

mysql> insert into orders values(10,1,'2007/12/12');
Query OK, 1 row affected, 1 warning (0.06 sec)

mysql> update orders set customer_id=4 where order_id=1;
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update orders set customer_id=2 where order_id=2;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update orders set customer_id=3 where order_id=3;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from orders;
+----------+-------------+--------------+
| order_id | customer_id | ordered_date |
+----------+-------------+--------------+
|        1 |           4 | 2005-01-10   |
|        2 |           2 | 2006-02-10   |
|        3 |           3 | 2005-03-20   |
|        4 |           3 | 2006-03-10   |
|        5 |           1 | 2007-04-05   |
|        6 |           7 | 2006-12-13   |
|        7 |           6 | 2008-03-13   |
|        8 |           6 | 2004-11-29   |
|        9 |           5 | 2005-01-13   |
|       10 |           1 | 2007-12-12   |
+----------+-------------+--------------+



# CREATE TABLE ORDER_DETAILS #

mysql> create table order_details(order_details_id int primary key,order_id int,product_id int,quantity int,foreign key(order_id)references orders(order_id),foreign key(product_id)references product(product_id));
Query OK, 0 rows affected (1.43 sec)

mysql> insert into order_details values(1,1,3,1);
Query OK, 1 row affected (0.23 sec)

mysql> insert into order_details values(2,1,2,3);
Query OK, 1 row affected (0.08 sec)

mysql> insert into order_details values(3,2,10,2);
Query OK, 1 row affected (0.07 sec)

mysql> insert into order_details values(4,3,7,10);
Query OK, 1 row affected (0.07 sec)

mysql> insert into order_details values(5,3,4,2);
Query OK, 1 row affected (0.06 sec)

mysql> insert into order_details values(6,3,5,4);
Query OK, 1 row affected (0.06 sec)

mysql> insert into order_details values(7,4,3,1);
Query OK, 1 row affected (0.08 sec)

mysql> insert into order_details values(8,5,1,2);
Query OK, 1 row affected (0.06 sec)

mysql> insert into order_details values(9,5,2,1);
Query OK, 1 row affected (0.07 sec)

mysql> insert into order_details values(10,6,5,1);
Query OK, 1 row affected (0.04 sec)

mysql> insert into order_details values(11,7,6,1);
Query OK, 1 row affected (0.06 sec)

mysql> insert into order_details values(12,8,10,2);
Query OK, 1 row affected (0.07 sec)

mysql> insert into order_details values(13,8,3,1);
Query OK, 1 row affected (0.04 sec)

mysql> insert into order_details values(14,9,10,3);
Query OK, 1 row affected (0.09 sec)

mysql> insert into order_details values(15,10,1,1);
Query OK, 1 row affected (0.06 sec)

mysql> select * from order_details;
+------------------+----------+------------+----------+
| order_details_id | order_id | product_id | quantity |
+------------------+----------+------------+----------+
|                1 |        1 |          3 |        1 |
|                2 |        1 |          2 |        3 |
|                3 |        2 |         10 |        2 |
|                4 |        3 |          7 |       10 |
|                5 |        3 |          4 |        2 |
|                6 |        3 |          5 |        4 |
|                7 |        4 |          3 |        1 |
|                8 |        5 |          1 |        2 |
|                9 |        5 |          2 |        1 |
|               10 |        6 |          5 |        1 |
|               11 |        7 |          6 |        1 |
|               12 |        8 |         10 |        2 |
|               13 |        8 |          3 |        1 |
|               14 |        9 |         10 |        3 |
|               15 |       10 |          1 |        1 |
+------------------+----------+------------+----------+



# Q1 #

mysql> select c.*,p.product_name from customer c,product p,orders o,order_details od where c.customer_id=o.customer_id and o.order_id=od.order_id and p.product_id=od.product_id;
+-------------+---------------+-----------------+
| customer_id | customer_name | product_name    |
+-------------+---------------+-----------------+
|           1 | john          | television      |
|           1 | john          | dvd             |
|           1 | john          | television      |
|           2 | smith         | home theatre    |
|           3 | ricky         | chair           |
|           3 | ricky         | computer        |
|           3 | ricky         | ipod            |
|           3 | ricky         | washing machine |
|           4 | waish         | washing machine |
|           4 | waish         | dvd             |
|           5 | stefen        | home theatre    |
|           6 | fleming       | panasonic phone |
|           6 | fleming       | home theatre    |
|           6 | fleming       | washing machine |
|           7 | thomson       | ipod            |
+-------------+---------------+-----------------+



# Q2 #

mysql> select o.order_id,o.ordered_date,(p.product_price*od.quantity) as 'total_price' from product p,orders o,order_details od where o.order_id=od.order_id and p.product_id=od.product_id order by o.order_id asc;
+----------+--------------+-------------+
| order_id | ordered_date | total_price |
+----------+--------------+-------------+
|        1 | 2005-01-10   |    10800.00 |
|        1 | 2005-01-10   |     7600.00 |
|        2 | 2006-02-10   |    38700.00 |
|        3 | 2005-03-20   |    71800.00 |
|        3 | 2005-03-20   |    12840.00 |
|        3 | 2005-03-20   |     3600.00 |
|        4 | 2006-03-10   |     7600.00 |
|        5 | 2007-04-05   |    38000.00 |
|        5 | 2007-04-05   |     3600.00 |
|        6 | 2006-12-13   |     3210.00 |
|        7 | 2008-03-13   |     2100.00 |
|        8 | 2004-11-29   |     7600.00 |
|        8 | 2004-11-29   |    38700.00 |
|        9 | 2005-01-13   |    58050.00 |
|       10 | 2007-12-12   |    19000.00 |
+----------+--------------+-------------+


# Q3 #

mysql> select * from customer where customer_id not in(select customer_id from orders);
+-------------+---------------+
| customer_id | customer_name |
+-------------+---------------+
|           8 | david         |
+-------------+---------------+


# Q4 #

mysql> select * from product where product_id not in(select product_id from order_details);
+------------+--------------+---------------+
| product_id | product_name | product_price |
+------------+--------------+---------------+
|          8 | table        |        490.00 |
|          9 | sound system |      12050.00 |
+------------+--------------+---------------+


# Q5 #

mysql> select c.customer_name,(p.product_price*od.quantity) as 'total_amount' from customer c,product p,orders o,order_details od where c.customer_id=o.customer_id and o.order_id=od.order_id and p.product_id=od.product_id order by c.customer_id asc;
+---------------+--------------+
| customer_name | total_amount |
+---------------+--------------+
| john          |     38000.00 |
| john          |     19000.00 |
| john          |      3600.00 |
| smith         |     38700.00 |
| ricky         |      7600.00 |
| ricky         |     71800.00 |
| ricky         |     12840.00 |
| ricky         |      3600.00 |
| waish         |     10800.00 |
| waish         |      7600.00 |
| stefen        |     58050.00 |
| fleming       |      7600.00 |
| fleming       |      2100.00 |
| fleming       |     38700.00 |
| thomson       |      3210.00 |
+---------------+--------------+


# Q6 #

mysql> select * from customer where customer_id in(select customer_id from orders where order_id=(select min(order_id) from orders)) union all select * from customer where customer_id in(select customer_id from orders where order_id=(select max(order_id) from orders));
+-------------+---------------+
| customer_id | customer_name |
+-------------+---------------+
|           4 | waish         |
|           1 | john          |
+-------------+---------------+


# Q7 #

mysql> select c.customer_name,o.customer_id,count(*) from orders o,customer c where c.customer_id=o.customer_id group by o.customer_id having count(o.customer_id)>1;
+---------------+-------------+----------+
| customer_name | customer_id | count(*) |
+---------------+-------------+----------+
| john          |           1 |        2 |
| ricky         |           3 |        2 |
| fleming       |           6 |        2 |
+---------------+-------------+----------+


# Q8 #

mysql> select c.*,count(*) as 'no_of_orders',extract(year from o.ordered_date)as 'year' from orders o,customer c where o.customer_id=c.customer_id group by year,c.customer_id order by no_of_orders desc limit 1;
+-------------+---------------+--------------+------+
| customer_id | customer_name | no_of_orders | year |
+-------------+---------------+--------------+------+
|           1 | john          |            2 | 2007 |
+-------------+---------------+--------------+------+


# Q9 #

mysql> select count(extract(month from ordered_date))as no_month, monthname(ordered_date) as month_name from orders group by extract(month from ordered_date) order by count(extract(month from ordered_date)) desc limit 1;
+----------+------------+
| no_month | month_name |
+----------+------------+
|        3 | March      |
+----------+------------+


# Q10 #

mysql> select max(product_price) from product where product_id in(select product_id from order_details order by product_id);
+--------------------+
| max(product_price) |
+--------------------+
|           35900.00 |
+--------------------+


mysql> create database Employee_Managemnt_System;

mysql>  use Employee_Managemnt_System;


//1.Create a table called Employee with the following columns:

Employee_id (INTEGER, Primary Key)

First_name (VARCHAR(50))

Last_name (VARCHAR(50))

Salary (DECIMAL(10,2))  //

mysql> create table Employee(Employee_id int(5) primary key,First_name varchar(50),Last_name varchar(50),Salary decimal(10,2));

mysql> desc Employee;

+-------------+---------------+------+-----+---------+-------+
| Field       | Type          | Null | Key | Default | Extra |
+-------------+---------------+------+-----+---------+-------+
| Employee_id | int           | NO   | PRI | NULL    |       |
| First_name  | varchar(50)   | YES  |     | NULL    |       |
| Last_name   | varchar(50)   | YES  |     | NULL    |       |
| Salary      | decimal(10,2) | YES  |     | NULL    |       |
+-------------+---------------+------+-----+---------+-------+


//2.Insert  5 employees records.

mysql> insert into Employee values(101,'Yash','Pawar',60000),(102,'Sayli','Bane',65000),(103,'Sahil','Yadav',50000),(104,'Sagar','Yadav',54000),(105,'Mohsin','Shaikh',70000);

mysql> select * from Employee;
+-------------+------------+-----------+----------+
| Employee_id | First_name | Last_name | Salary   |
+-------------+------------+-----------+----------+
|         101 | Yash       | Pawar     | 60000.00 |
|         102 | Sayli      | Bane      | 65000.00 |
|         103 | Sahil      | Yadav     | 50000.00 |
|         104 | Sagar      | Yadav     | 54000.00 |
|         105 | Mohsin     | Shaikh    | 70000.00 |
+-------------+------------+-----------+----------+


//3.Alter the table to include a new column.:Add a new column Department (VARCHAR(50)) to the table.

mysql> alter table Employee add Department varchar(50);

mysql> desc Employee;
+-------------+---------------+------+-----+---------+-------+
| Field       | Type          | Null | Key | Default | Extra |
+-------------+---------------+------+-----+---------+-------+
| Employee_id | int           | NO   | PRI | NULL    |       |
| First_name  | varchar(50)   | YES  |     | NULL    |       |
| Last_name   | varchar(50)   | YES  |     | NULL    |       |
| Salary      | decimal(10,2) | YES  |     | NULL    |       |
| Department  | varchar(50)   | YES  |     | NULL    |       |
+-------------+---------------+------+-----+---------+-------+


mysql> UPDATE Employee SET Department = 'HR' WHERE Employee_id = 101;

mysql> UPDATE Employee SET Department = 'Finance' WHERE Employee_id = 102;

mysql> UPDATE Employee SET Department = 'IT' WHERE Employee_id = 103;

mysql> UPDATE Employee SET Department = 'Marketing' WHERE Employee_id = 104;

mysql> UPDATE Employee SET Department = 'IT' WHERE Employee_id = 105;


mysql> select * from Employee;
+-------------+------------+-----------+----------+------------+
| Employee_id | First_name | Last_name | Salary   | Department |
+-------------+------------+-----------+----------+------------+
|         101 | Yash       | Pawar     | 60000.00 | HR         |
|         102 | Sayli      | Bane      | 65000.00 | Finance    |
|         103 | Sahil      | Yadav     | 50000.00 | IT         |
|         104 | Sagar      | Yadav     | 54000.00 | Marketing  |
|         105 | Mohsin     | Shaikh    | 70000.00 | IT         |
+-------------+------------+-----------+----------+------------+


//4.Get the names and department of employees who earn more than 55000.

mysql> select First_name, Last_name, Department FROM Employee WHERE Salary > 55000;
+------------+-----------+------------+
| First_name | Last_name | Department |
+------------+-----------+------------+
| Yash       | Pawar     | HR         |
| Sayli      | Bane      | Finance    |
| Mohsin     | Shaikh    | IT         |
+------------+-----------+------------+




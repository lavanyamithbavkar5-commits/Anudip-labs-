mysql> create database bank;

mysql> create table BankAccount;

mysql> create table BankAccount(account_id int(5) primary key not null, accholder_name varchar(50) ,account_balance int(10));

mysql> desc bankaccount;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| account_id      | int         | NO   | PRI | NULL    |       |
| accholder_name  | varchar(50) | YES  |     | NULL    |       |
| account_balance | int         | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+

//Insert Data Write an SQL INSERT statement to insert data into the BankAccount table.//


mysql> insert into bankaccount values(1,'sayali',100000);

mysql> insert into bankaccount values(2,'sahil',65000),(3,'yash',20000),(4,'sagar',10000),(5,'mohsin',70000);

mysql> select * from bankaccount;
+------------+----------------+-----------------+
| account_id | accholder_name | account_balance |
+------------+----------------+-----------------+
|          1 | sayali         |          100000 |
|          2 | sahil          |           65000 |
|          3 | yash           |           20000 |
|          4 | sagar          |           10000 |
|          5 | mohsin         |           70000 |
+------------+----------------+-----------------+

//Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table.//


mysql> select accholder_name ,account_balance from bankaccount;
+----------------+-----------------+
| accholder_name | account_balance |
+----------------+-----------------+
| sayali         |          100000 |
| sahil          |           65000 |
| yash           |           20000 |
| sagar          |           10000 |
| mohsin         |           70000 |
+----------------+-----------------+

//Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.// 

mysql> select accholder_name ,account_balance from bankaccount where account_balance > 30000;
+----------------+-----------------+
| accholder_name | account_balance |
+----------------+-----------------+
| sayali         |          100000 |
| sahil          |           65000 |
| mohsin         |           70000 |
+----------------+-----------------+

//Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.//

mysql> update bankaccount set account_balance=95000 where account_id=1;

mysql> select * from bankaccount;
+------------+----------------+-----------------+
| account_id | accholder_name | account_balance |
+------------+----------------+-----------------+
|          1 | sayali         |           95000 |
|          2 | sahil          |           65000 |
|          3 | yash           |           20000 |
|          4 | sagar          |           10000 |
|          5 | mohsin         |           70000 |
+------------+----------------+-----------------+





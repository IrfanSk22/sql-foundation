/*

❖ MySQL Stored Procedure (Advantages)
    - Reduce Network Traffic, no need to send lengthy queries from the clients
    - Centrailzed business logic
    - More Security, you can assign roles and priviledges to the users

❖  Changing Default Delimiter (wo symbol jis ki help se query terminate hoti h)

❖  Creating Stored Procedure

*/

mysql> delimiter //
mysql> create procedure CreateMembersTable()
    -> begin
    -> create table if not exists members(
    -> member_id int auto_increment primary key,
    -> first_name varchar(255),
    -> last_name varchar(255),
    -> city varchar(255)
    -> );
    -> insert into members(first_name, last_name, city) values ('durgesh', 'tiwary', 'lucknow');
    -> insert into members(first_name, last_name, city) values ('ankit', 'dubey', 'delhi');
    -> select * from members;
    -> end //
Query OK, 0 rows affected (0.02 sec)

mysql> call CreateMembersTable()//
+-----------+------------+-----------+---------+
| member_id | first_name | last_name | city    |
+-----------+------------+-----------+---------+
|         1 | durgesh    | tiwary    | lucknow |
|         2 | ankit      | dubey     | delhi   |
+-----------+------------+-----------+---------+
2 rows in set (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

/*

❖  Variables
    Declare [variableName] dataType(size) [default size];
    Set variableName value;

*/

mysql> delimiter //
mysql> create procedure countItems()
    -> begin
    -> declare count int default 0;
    -> select count(*) into count from users;
    -> select count;
    -> end//
Query OK, 0 rows affected (0.07 sec)

mysql> delimiter ;
mysql> call countItems();
+-------+
| count |
+-------+
|     2 |
+-------+

/*

❖  Parameters-IN, OUT, INOUT

*/

mysql> delimiter //
mysql> create procedure SelectByLast(IN l_name varchar(255))
    -> begin
    -> select * from users where last_name = l_name;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> call SelectByLast('tiwary')//
+---------+------------+-----------+---------+
| user_id | first_name | last_name | city    |
+---------+------------+-----------+---------+
|       1 | durgesh    | tiwary    | Lucknow |
+---------+------------+-----------+---------+
1 row in set (0.01 sec)

--

mysql> create procedure CountByLast(IN l_name varchar(255), OUT count_l int)
    -> begin
    -> select count(*) into count_l from users where last_name = l_name;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> call CountByLast('tiwary', @CountLast);
    -> //
Query OK, 1 row affected (0.01 sec)

mysql> select @CountLast//
+------------+
| @CountLast |
+------------+
|          1 |
+------------+
1 row in set (0.00 sec)


/*

❖  Alter procedure // how to alter procedures in mysql?

❖  Drop Procedure
    drop procedure [procedure_name]

❖  Listing Stored Procedures
    show procedure status where db=[dbname]

*/

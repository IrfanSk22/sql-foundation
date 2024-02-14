-- 1) find the length
LENGTH (str);
SELECT LENGTH("Learn Code With Durgesh") str_length;

-- 2) for concatination
CONCATE(str1, str2);
SELECT CONCAT("Learn Code ", "With Durgesh") concat_str;

-- 3) to lowercase
LCASE(str);
SELECT LCASE("HELLO WORLD") lowercase_str;

-- 4) to uppercase
UCASE(str);
SELECT UCASE("hello world") lowercase_str;

-- 5) extract part of the string
SUBSTRING(str, start, length);
SELECT SUBSTRING("learn code with durgesh", 1, 5);

-- 6) remove leading and trailing spaces
TRIM(str);
SELECT TRIM("  DD  ") trim_str;

-- 7) reverse the string
SELECT REVERSE("ABCD");

-- 8) string compare
-- If string1 = string2, this function returns 0 
-- If string1 < string2, this function returns -1
-- If string 1 > string2, this function returns 1
STRCMP(str1, str2); 

SELECT STRCMP("hello", "hello"); -- 0
SELECT STRCMP("hello", "world"); -- -1
SELECT STRCMP("raj", "gupta"); -- 1

------------------

-- other important functions

-- 1) return the current date
SELECT CURDATE();
-- +------------+
-- | CURDATE()  |
-- +------------+
-- | 2024-02-13 |
-- +------------+

-- 2) return the current time 
SELECT CURTIME();
-- +-----------+
-- | curtime() |
-- +-----------+
-- | 17:09:57  |
-- +-----------+

-- 3) return the current date and time
SELECT NOW();
-- +---------------------+
-- | NOW()               |
-- +---------------------+
-- | 2024-02-13 17:11:31 |
-- +---------------------+

-- 4) return yes if test true else no 
-- IF (test, yes, no);

SELECT name, fees, IF(fees > 3200, "HAVE TO PAY", "NOT REQUIRED") status FROM students;
-- +-----------------+------+--------------+
-- | name            | fees | status       |
-- +-----------------+------+--------------+
-- | MS Dhoni        | 3000 | NOT REQUIRED |
-- | Virat Kohli     | 3000 | NOT REQUIRED |
-- | Sachin          | 3000 | NOT REQUIRED |
-- | Kane Williamson | 4000 | HAVE TO PAY  |
-- | Steve Smith     | 4000 | HAVE TO PAY  |
-- +-----------------+------+--------------+

-- 5) if null then test else value itself
SELECT IFNULL(NULL, "lcwd.com");
-- +--------------------------+
-- | IFNULL(NULL, "lcwd.com") |
-- +--------------------------+
-- | lcwd.com                 |
-- +--------------------------+

-- 6) return the current database
SELECT DATABASE();

-- 7) return the version of mysql database
SELECT VERSION();

-- 8) return the current user
SELECT USER();

-- +------+-------+----------------+
-- | db   | ver   | us             |
-- +------+-------+----------------+
-- | demo | 8.3.0 | root@localhost |
-- +------+-------+----------------+

------------------

-- IN operator
SELECT * FROM students WHERE city IN ("mumbai", "delhi");

-- LIKE operator
SELECT * FROM students WHERE NAME LIKE 'V%';
SELECT * FROM students WHERE NAME LIKE '%i';
SELECT * FROM students WHERE NAME LIKE "_a%";
SELECT * FROM students WHERE NAME LIKE "%n_";
SELECT * FROM students WHERE NAME LIKE "%c%";


-- CREATE FORIEGN KEY 
-- while creating table

create table qualifications (
    qId int primary key auto_increment,
    pass_year varchar(4) not null,
    name varchar(500) not null,
    about varchar(100),
    sId int,
    foreign key (sId) references students(id) 
);

CREATE TABLE laptops (
    lId INT, 
    model VARCHAR(500) NOT NULL,
    price INT,
    sId INT,
    FOREIGN KEY (this_col_name) REFERENCES  [parent_table_name] (parent_primary_key_col);
);

-- constraints (primary key, unqiue key, foreign key's etc. are constraints)

-- add
ALTER TABLE [tablename] ADD FOREIGN KEY (this_col_name) 
    REFERENCES [parent_table_name] (parent_primary_key_col);

ALTER TABLE [tablename] ADD CONSTRAINT FK_student252 FOREIGN KEY (this_col_name) 
    REFERENCES [parent_table_name] (parent_primary_key_col);

-- drop

alter table [tablename] drop foreign key [constraintname];


-----------------------

-- simple join/inner join
select students.name, students.city, laptops.model, laptops.price
from students, laptops where students.id = laptops.sId;

-- using aliases

select s.name, s.city, l.model, l.price
from students s, laptops l
where s.id = l.sId;

-- with inner join syntex

select s.name, s.city, l.model, l.price
from students s
inner join laptops l
on s.id = l.sId;


-- using mysql gui client
-- importing/exporting database
-- managing users and permissions

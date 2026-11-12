
-- =========================================
-- DATABASE CREATION
-- =========================================

DROP DATABASE IF EXISTS DDL_Commands;

CREATE DATABASE DDL_Commands;

USE DDL_Commands;


-- =========================================
-- TABLE 1: my_table
-- =========================================

CREATE TABLE my_table (
    id INT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- =========================================
-- INSERT DATA INTO my_table
-- =========================================

INSERT INTO my_table (id, name, age) VALUES
(1, 'Rohit', 25),
(2, 'Sachin', 35),
(3, 'Vikas', 28);


-- =========================================
-- TABLE 2: my_table2
-- =========================================

CREATE TABLE my_table2 (
    id INT,
    description VARCHAR(255) NOT NULL
);


-- =========================================
-- INSERT DATA INTO my_table2
-- =========================================

INSERT INTO my_table2 (id, description) VALUES
(1, 'Item 1'),
(2, 'Item 2'),
(3, 'Item 3');


-- =========================================
-- DISPLAY TABLE DATA
-- =========================================

SELECT * FROM my_table;

SELECT * FROM my_table2;


-- =========================================
-- ALTER TABLE COMMANDS
-- =========================================

-- #1 CHANGE COLUMN name TO full_name

ALTER TABLE my_table
CHANGE COLUMN name full_name VARCHAR(100) NOT NULL;


-- #2 MODIFY age DATA TYPE TO BIGINT

ALTER TABLE my_table
MODIFY age BIGINT NOT NULL;


-- #3 ADD email COLUMN

ALTER TABLE my_table
ADD COLUMN email VARCHAR(100) NOT NULL;


-- #4 ADD middle_name AFTER full_name

ALTER TABLE my_table
ADD COLUMN middle_name VARCHAR(50) AFTER full_name;


-- #5 ADD EMP_Rank AS FIRST COLUMN

ALTER TABLE my_table
ADD COLUMN EMP_Rank INT FIRST;


-- #6 MODIFY created_at TO DATETIME

ALTER TABLE my_table
MODIFY created_at DATETIME;


-- #7 MODIFY description TO TEXT

ALTER TABLE my_table2
MODIFY description TEXT;


-- #8 MODIFY full_name TO ALLOW NULL

ALTER TABLE my_table
MODIFY COLUMN full_name VARCHAR(255) NULL;


-- #9 ADD PRIMARY KEY

ALTER TABLE my_table
ADD PRIMARY KEY (id);


-- #10 DROP middle_name COLUMN

ALTER TABLE my_table
DROP COLUMN middle_name;


-- #11 RENAME email TO email_add

ALTER TABLE my_table
RENAME COLUMN email TO email_add;


-- #12 MODIFY age TO ALLOW NULL

ALTER TABLE my_table
MODIFY age INT NULL;


-- #13 ADD FOREIGN KEY CONSTRAINT

ALTER TABLE my_table2
ADD CONSTRAINT fk_id
FOREIGN KEY (id)
REFERENCES my_table(id);


-- #14 DROP FOREIGN KEY CONSTRAINT

ALTER TABLE my_table2
DROP FOREIGN KEY fk_id;


-- #15 MODIFY full_name SIZE TO VARCHAR(200)

ALTER TABLE my_table
MODIFY full_name VARCHAR(200) NOT NULL;


-- #16 DROP TABLE my_table2

DROP TABLE my_table2;


-- #18 DROP PRIMARY KEY

ALTER TABLE my_table
DROP PRIMARY KEY;


-- #19 DROP age COLUMN

ALTER TABLE my_table
DROP COLUMN age;


-- #20 DROP DATABASE

DROP DATABASE DDL_Commands;
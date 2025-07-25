  
  CREATE DATABASE dbthree;
  
  USE dbthree;

  CREATE TABLE employees(eid int, ename varchar(20), gender varchar(20));

  INSERT INTO employees VALUES(101,"RG","male"),(102,"SG","female"),(103,"PG","female");
  
  SELECT * FROM employees;


 UPDATE AND DELETE;
----------------------

 UPDATE employees SET ename = "Rahul Gandhi" WHERE eid = 101;

 DELETE FROM employees;
-------------------------------------------------------------------------------------------

Mysql constraints:
  
   Rule on data;
     * NOT NULL      - NULL values are not allowed but duplicates are allowed.
     * UNIQUE        - Duplicates are not allowed but null values are allowed.
     * DEFAULT       - Default value
     * CHECK         - Condition [operator]
     * PRIMARY KEY   - [NOT NULL + UNIQUE]
     * FOREIGN KEY   -
     * INDEX         -
-------------------------------------------------------------------------------------------
  CONSTRAINTS:
--------------------------------

  CREATE TABLE employees1(eid int UNIQUE, ename varchar(20), esal float, loc varchar(20),age        	int);

  INSERT INTO employees1 VALUES(101,"RG",45000.45,"Wayanad",45),(102,"SG",46000.45,"New   	Delhi",52),(103,"PG",50000.45,"Tamil Nadu",46);

  INSERT INTO employees1(ename,esal,loc)VALUES("MKS",10000.0,"Tamil Nadu");
--------------------------------------------------------------------------------------------

  CREATING A TABLE EMPLOYEES2;
-------------------------------
  
  CREATE TABLE employees2(eid int NOT NULL,
      ename varchar(20) UNIQUE, 
      esal float,
      loc varchar(20) DEFAULT 'Bangalore',
      age int CHECK (age>=18));

  INSERT INTO employees2 VALUES(101,"Rahul Gandhi",45000.5,"New Delhi",18);

 



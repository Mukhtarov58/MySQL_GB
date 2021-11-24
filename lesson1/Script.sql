cmd: mysql
SHOW DATABASE;
CREATE DATABASE example;
USE example;
CREATE TABLE users (id SERIAL, name VARCHAR9(100) NOT NULL UNIQUE); 
SHOW TABLES;
\q
cmd: mysqldump example > example.SQL 
cmd: dir
cmd: mysql
CREATE DATABASE sample;
\q
cmd: mysql sample < example.SQL
cmd: mysql
USE sample;
SHOW TABLES;
\q
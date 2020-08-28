C:\Program Files\PostgreSQL\10\bin>pg_ctl -D d:\clu1 status
pg_ctl: no server running

C:\Program Files\PostgreSQL\10\bin>pg_ctl -D d:\clu1 start
 done
server started


C:\Program Files\PostgreSQL\10\bin>psql -d postgres -p 9999 -U PostgreSQL

\c test1
You are now connected to database "test1" as user "PostgreSQL".
create table emp(empid integer,empname character varying(50),location character varying(50),depid integer,salary integer);
CREATE TABLE
create role empuser with replication login password 'secret_password';
CREATE ROLE
grant all privileges on database test1 to empuser;
GRANT
grant all privileges on all tables in schema public to empuser;
GRANT
create publication my_emplica;
CREATE PUBLICATION
alter publication my_emplica add table emp;
ALTER PUBLICATION


insert into emp (empid,empname,location,depid,salary) values (1,'aswin','chennai',123,8000);
INSERT 0 1
insert into emp (empid,empname,location,depid,salary) values (2,'sathiya','trichy',120,10000);
INSERT 0 1
insert into emp (empid,empname,location,depid,salary) values (5,'madhu','usa',18,15000);
INSERT 0 1
insert into emp (empid,empname,location,depid,salary) values (4,'manoj','usa',14,1700);
INSERT 0 1
insert into emp (empid,empname,location,depid,salary) values (7,'arun','uk',171,1400);
INSERT 0 1
insert into emp (empid,empname,location,depid,salary) values (8,'pavi','trichy',23,30000);
INSERT 0 1
insert into emp (empid,empname,location,depid,salary) values (15,'praveen','selam',27,3000);
INSERT 0 1

select * from emp;
empid  | empname | location | depid | salry 
-----------+----------+-----------+-----------+------
1   | aswin    | chennai | 123   | 8000
2   | sathya   | trichy  | 120   | 10000
5   | madhu    | usa     | 18    | 15000
4   | manoj    | usa     | 14    | 1700
7   | arun     | uk      | 171   | 1400
8   | pavi     | trichy  | 23    | 30000
15  | praveen  | selam   | 27    | 3000



C:\Program Files\PostgreSQL\10\bin>pg_ctl -D d:\clu2 start
 done
server started


C:\Program Files\PostgreSQL\10\bin>psql -d postgres -p 9898 -U Postgresql

create table emp(empid integer,empname character varying(50),location character varying(50),depid integer,salary integer);
CREATE TABLE

020-08-28 07:29:47.213 EDT [2972] LOG:  logical replication apply worker for subscription "my_subsa" has started
2020-08-28 07:29:47.330 EDT [5108] LOG:  logical replication apply worker for subscription "my_crp" has started
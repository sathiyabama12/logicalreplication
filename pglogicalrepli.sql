C:\Program Files\PostgreSQL\10\bin>pg_ctl -D d:\clu1 status

C:\Program Files\PostgreSQL\10\bin>pg_ctl -D d:\clu1 start

C:\Program Files\PostgreSQL\10\bin>psql -d postgres -p 9999 -U PostgreSQL

\c test1

You are now connected to database "test1" as user "PostgreSQL".

create table infor(id integer,name character varying(50),location character varying(50));
CREATE TABLE

create role infouser with replication login password 'secret_password';
CREATE ROLE

create publication my_infolica;
CREATE PUBLICATION

grant select on infor to infouser;
GRANT



insert into infor(id,name,location) values (1,'vishnu','tanjore');
INSERT 0 1
insert into infor (id,name,location) values (2,'inigo','lalgudi');
INSERT 0 1
insert into infor (id,name,location) values (5,'deepika','perambalur');
INSERT 0 1
insert into infor (id,name,location) values (4,'raj','erode');
INSERT 0 1


select * from infor;
id  | empname | location  
-----------+----------+-------
1   | vishnu    | tanjore 
2   | inigo    | lalgudi  
5   | deepika  | perambalur     
4   | raj      | erode     


create procedure insertinfo (int,varchar(50),varchar(50))

language 'plpgsql'

as $$

begin

insert into infor(id,name,location) values ($1,$2,$3,$4);

commit;

end;

$$

call insertinfo(5,'sathiya','trichy');

call insertinfo(6,'arun','madurai');

select * from infor;

C:\Program Files\PostgreSQL\10\bin>pg_ctl -D d:\clu2 start
 done
server started


C:\Program Files\PostgreSQL\10\bin>psql -d postgres -p 9898 -U Postgresql

create table infor(id integer,name character varying(50),location character varying(50));
CREATE TABLE

020-08-28 07:29:47.213 EDT [2972] LOG:  logical replication apply worker for subscription "my_subsa" has started

select * from infor;
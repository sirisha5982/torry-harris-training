create table region(reg_id int not null primary key,reg_name varchar(20));
insert into region values(2,"gita");
insert into region values(3,"anita");
insert into region values(4,"suvetha");
insert into region values(5,"ankita");
select * from region;
create table country(cou_id char not null primary key,cou_name varchar(20),reg_id int unsigned not null);
insert into country values(1,"india",1);
insert into country values(2,"pakistan",2);
insert into country values(3,"russia",3);
insert into country values(4,"america",4);
insert into country values(5,"australia",5);
select * from country;
create table location(loc_id int unsigned not null auto_increment primary key,street_address varchar(20),postal_cod varchar(10),city varchar(10) not null,state_province varchar(20),cou_id char not null);
insert into location values(1,"abc","abc1","banglore","karnataka","1");
insert into location(street_address,postal_cod,city,state_province,cou_id)values("cde","cde2","vijayawada","AP","2");
insert into location(street_address,postal_cod,city,state_province,cou_id)values("efg","efg3","rajmundry","AP","3");
insert into location(street_address,postal_cod,city,state_province,cou_id)values("ghi","ghi4","hyderabad","telangana","4");
insert into location(street_address,postal_cod,city,state_province,cou_id)values("ijk","ijk5","mysore","karnataka","5");
select * from location;
set foreign_key_checks=0;
create table departments(dept_id int unsigned not null primary key,dept_name varchar(20) not null,manager_id int unsigned,loc_id int unsigned);
insert into departments values(10,"cse",2,1);
insert into departments values(20,"ece",4,2);
insert into departments values(30,"eee",6,3);
insert into departments values(40,"ecm",8,4);
insert into departments values(50,"IT",10,5);
select * from departments;
create table jobs(job_id varchar(20) not null primary key,job_title varchar(10) not null,min_salary decimal unsigned,max_salary decimal unsigned);
insert into jobs values("5982","THBS",30000,40000);
insert into jobs values("5983","wipro",30000,40000);
insert into jobs values("5984","TCS",30000,40000);
insert into jobs values("5985","microsoft",30000,40000);
insert into jobs values("5981","pearson",30000,40000);
select * from jobs;
create table employees(employee_id int unsigned not null primary key,first_name varchar(10),last_name varchar(20) not null,email varchar(20) not null,phone_number varchar(10),hire_date date not null,job_id varchar(10) not null,salary decimal not null,commission_pct decimal,manager_id int unsigned,dept_id int unsigned);
insert into employees values(11,"sirisha","varanasi","sirisha@thbs.com","9984721231","2021-8-25","5981",40000,50000,2,10);
insert into employees values(12,"kavya","tulasi","kavya@thbs.com","9494171141","2021-8-26","5984",30000,50000,4,20);
insert into employees values(13,"ashwini","hemagowda","aswhini@thbs.com","9984421231","2021-8-27","5983",40000,50000,6,30);
select * from employees;
create table job_history(employee_id int unsigned not null,start_date date not null,end_date date not null,job_id varchar(10) not null,dept_id int unsigned not null);
insert into job_history values(11,"2012-05-1","2013-5-1",5981,10);
insert into job_history values(12,"2013-6-5","2014-6-5",5982,20);
insert into job_history values(13,"2014-7-2","2015-7-2",5983,30);
select * from job_history;
alter table job_history add primary key(employee_id,start_date);
alter table country add foreign key(reg_id) references region(reg_id);
alter table region modify reg_id int unsigned;
alter table location add foreign key(cou_id) references country(cou_id);
alter table departments add foreign key(loc_id) references location(loc_id);
alter table employees add foreign key(dept_id) references departments(dept_id);
alter table employees add foreign key(job_id) references jobs(job_id);
alter table employees add foreign key(manager_id) references employees(employee_id);
alter table departments add foreign key(manager_id) references employees(employee_id);
alter table job_history add foreign key(employee_id) references employees(employee_id);
alter table job_history add foreign key(job_id) references jobs(job_id);
alter table job_history add foreign key(dept_id) references departments(dept_id);





































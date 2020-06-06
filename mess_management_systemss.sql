create table student( s_id number(10) primary key,
s_name varchar2(25) not null,
s_dept varchar2(25) not null,
s_DOB date not null,
H_name varchar2(50),
room_no number(10));



select * from student;
------------- insertion
insert into student values(1,'Aman','CS','12-May-1994','Shipra',12);
insert into student values(2,'Ayushi','ME','12-May-1991','CBH',13);
insert into student values(3,'Pinki','CS','10-JUN-1999','Koyna',112);
insert into student values(4,'Qurban','ME','22-May-1991','Jhelum',120);
insert into student values(5,'Deepali','CS','16-SEP-1999','Tapti',312);
insert into student values(6,'Himani','MA','12-July-1991','Sutlaj',350);
insert into student values(7,'Tarana','MA','12-May-1994','Ganga',169);
insert into student values(8,'Anjili','IR','12-May-1994','Tapti',184);
insert into student values(9,'Ali Asghar','CS','11-DEC-1994','Tapti',141);
insert into student values(10,'Sonu','ME','12-JAN-1991','Sutlaj',167);
insert into student values(11,'Suarve','CS','12-FEB-2000','Sutlaj',190);
insert into student values(12,'Beebik','CE','12-JUL-2003','Jhelum',149);

select * from student;
delete from student;

select * from student;
desc student;

create table student_phone_no( s_id number(10) not null,
ph_no number(10));

insert into student_phone_no values(1,9987542387);
insert into student_phone_no values(2,9958452703);
insert into student_phone_no values(3,9987654443);
insert into student_phone_no values(4,9965433322);
insert into student_phone_no values(5,9987673477);
insert into student_phone_no values(6,9934648876);
insert into student_phone_no values(7,9908600880);
insert into student_phone_no values(8,9945678987);
insert into student_phone_no values(9,9982964993);
insert into student_phone_no values(10,998754255);
insert into student_phone_no values(10,998754255);
insert into student_phone_no values(11,989653222);
insert into student_phone_no values(12,989653000);


select * from student_phone_no;


alter table student_phone_no 
add constraint student_ph_FK
foreign key (s_id)
references student;

create table Hostel( H_name varchar2(50) primary key,
H_type varchar2(25) not null,
Budget number(10,2));

insert into hostel values('Shipra','Girls',50000);
insert into hostel values('Tapti','Co-Ed',45000);
insert into hostel values('CBH','Co-Ed',50000);
insert into hostel values('Koyna','Girls',55000);
insert into hostel values('Jhelum','Boys',60000);
insert into hostel values('Sutlaj','Boys',65000);
insert into hostel values('Ganga','Girls',50000);
insert into hostel values('Periyar','Girls',51000);
insert into hostel values('Lohit','Co-Ed',70000);
insert into hostel values('Yamuna','Girls',70000);
insert into hostel values('Godavari','Girls',45000);

select * from hostel;

alter table student 
add constraint H_name_Hostel_FK
foreign key (H_name)
references hostel;

create table worker(
E_id number(10) primary key,
E_name varchar2(25),
H_name varchar2(50) not null,
E_salary number(10,2));

insert into worker values(1,'Sanjay','CBH',14000);
insert into worker values(2,'Jito','Shipra',14600);
insert into worker values(3,'Baran','Tapti',15000);
insert into worker values(4,'Himraj','Koyna',18000);
insert into worker values(5,'Salman','Jhelum',24000);
insert into worker values(6,'Abubakr','Sutlaj',18000);
insert into worker values(7,'Amir','Ganga',19000);
insert into worker values(8,'Suarn','Periyar',16000);
insert into worker values(9,'Hamida','Lohit',17000);
insert into worker values(10,'Hanafi','Yamuna',14500);
insert into worker values(11,'Hanafi','Godavari',15500);


select * from worker;

alter table worker 
add constraint worker_H_name_fp
foreign key(H_name)
references hostel;


create table mess_manager(
E_id number(10) primary key,
duty_time varchar2(10));

insert into mess_manager values(2,'Breakfast');
insert into mess_manager values(5,'Dinner');
insert into mess_manager values(7,'Dinner');
insert into mess_manager values(8,'Manager');


select * from mess_manager;
-- drop table mess_manager;

alter table mess_manager
add constraint mes_manager_worker_fk
foreign key (e_id)
references worker;

create table labour_staff(
e_id number(10) primary key,
compensation number(10,2));

insert into labour_staff values(1,900);
insert into labour_staff values(3,800);
insert into labour_staff values(6,1900);
insert into labour_staff values(10,1200);
insert into labour_staff values(11,2900);


select * from labour_staff;
--drop table labour_staff;


alter table labour_staff
add constraint labour_worker_fk
foreign key (e_id)
references worker;

create table clerical_staff(
e_id number(10) primary key,
provident_fund number(10,2));

insert into clerical_staff values(4,17000);
insert into clerical_staff values(9,8000);


select * from clerical_staff;
--drop table clerical_staff;

alter table clerical_staff
add constraint clerical_staff_fk
foreign key (e_id)
references worker;

create table hostel_commitee(
s_id number(10) primary key,
tenure varchar2(25),
post varchar2(50),
H_name varchar2(50));

insert into hostel_commitee values(2, 9,'Mess secertry','Sutlaj');
insert into hostel_commitee values(5, 12,'President','Ganga');
insert into hostel_commitee values(7, 12,'Take care','Shipra');
insert into hostel_commitee values(9, 12,'President','CBH');
insert into hostel_commitee values(11, 6,'Mess secertry','Sutlaj');
insert into hostel_commitee values(12, 9,'Mess secertry','Shipra');


select * from hostel_commitee;

alter table hostel_commitee
add constraint hostel_commitee_fk
foreign key (s_id)
references student;

create table purchase_item(
item_name varchar2(25) ,
p_date date,
Quantity number(10),
price number(10,2),
primary key(item_name, p_date, Quantity));

insert into purchase_item values('Rice','12-April-2019',400,15000);
insert into purchase_item values('Bread','12-April-2019',80,1500);
insert into purchase_item values('Vegetable','13-April-2019',30,1700);
insert into purchase_item values('Chicken','13-April-2019',90,17000);
insert into purchase_item values('Milk','14-April-2019',80,3000);
insert into purchase_item values('Eggs','14-April-2019',400,2000);
insert into purchase_item values('flour','18-April-2019',10,7000);
insert into purchase_item values('salt','18-April-2019',20,500);
insert into purchase_item values('Peas','18-April-2019',100,17000);
insert into purchase_item values('Beans','21-April-2019',100,19500);
insert into purchase_item values('Potatos','23-April-2019',60,1900);
insert into purchase_item values('Onions','23-April-2019',40,900);
insert into purchase_item values('vegetable','18-April-2019',30,7000);



select * from purchase_item;

create table warden (w_id number(10) primary key,
w_name varchar2(25),
DOB date,
H_name varchar2(50));

insert into warden values (1,'Tafheem','22-DEC-1973','Shipra');
insert into warden values (2,'Reza Khan','22-DEC-1973','Tapti');
insert into warden values (3,'Sajeed','10-NOV-1973','CBH');
insert into warden values (4,'Molana','03-SEP-1973','Koyna');
insert into warden values (5,'Ali Didar','12-JUN-1973','Jhelum');
insert into warden values (6,'Yaser','20-MAY-1983','Sutlaj');
insert into warden values (7,'Sanjay','22-FEB-1981','Ganga');
insert into warden values (8,'Amit Khan','22-NOV-1982','Periyar');
insert into warden values (9,'Amir Khan','21-DEC-1990','Lohit');
insert into warden values (10,'Sunil','24-DEC-1983','Yamuna');
insert into warden values (11,'Sunil','24-DEC-1983','Ganga');



select * from warden;
select * from hostel;
 
alter table warden 
add constraint warden_Hostel_fk
foreign key (h_name)
references hostel;


create table fees(
payment_No number(10), 
s_id number(10),
amount number(10,2),
P_date date,
w_id number(10),
primary key(payment_no, s_id));


insert into fees values( 1,4,2000,'12-DEC-2018',2);
insert into fees values( 2,7,2500,'12-DEC-2018',3);
insert into fees values( 3,6,2100,'13-DEC-2018',4);
insert into fees values( 4,9,3000,'15-DEC-2018',7);
insert into fees values( 5,8,1200,'17-DEC-2018',6);
insert into fees values( 6,2,1950,'19-DEC-2018',8);
insert into fees values( 7,3,1850,'30-DEC-2018',7);
insert into fees values( 8,12,2350,'31-DEC-2018',7);
insert into fees values( 9,1,1300,'1-JAN-2019',4);
insert into fees values( 10,5,2000,'12-FEB-2019',1);
insert into fees values( 11,10,2200,'12-April-2019',4);
insert into fees values( 12,11,2400,'12-MAY-2019',3);




-

select * from fees;
alter table fees
add constraint fees_warden_fk
foreign key (w_id)
references warden;

alter table fees
add constraint fees_student_fk
foreign key (s_id)
references student;

create table decides(
h_name varchar2(50),
item_name varchar2(25),
quantity number(10),
p_date date,
e_id number(10),
primary key (h_name,item_name, quantity,p_date, e_id ));

select * from decides;
select * from hostel;
select * from mess_manager;
SELECT * FROM PURCHASE_ITEM;
insert into decides values('CBH','Rice',400,'12-APRIL-2019',2);
insert into decides values('Ganga','Bread',80,'12-APR-2019',5);
insert into decides values('Tapti','Eggs',80,'14-APRIL-2019',7);
insert into decides values('Sutlaj','Salt',20,'18-APRIL-2019',);
insert into decides values('Koyna','Beans',100,'21-APRIL-2019',8);
insert into decides values('Lohid','Potato',60,'23-APRIL-2019',5);
insert into decides values('Periyar','flour',10,'18-APRIL-2019',2);
insert into decides values('Yamuna','Milk',80,'14-APRIL-2019',8);
insert into decides values('Godavari','Chicken',90,'13-APRIL-2019',2);

select * from decides;





alter table decides
add constraint desides_hostel_fk
foreign key (h_name)
references hostel;

alter table decides
add constraints mess_manager_hostel_fk
foreign key (e_id)
references mess_manager;

alter table decides
add constraints purchase_item_fk
foreign key (item_name, quantity,p_date)
references purchase_item(item_name,quantity,p_date);

create table purchase_item(
item_name varchar2(25) ,
p_date date,
Quantity number(10),
price number(10,2),
primary key(item_name, p_date, Quantity));


select * from purchase_item;

create table hostel_night(
name varchar2(25) primary key,
budget number(10,2),
h_name varchar2(25),
coupen_type varchar2(25),
h_date date);

select * from hostel;
insert into hostel_night values('Smilely',12000,'CBH','Veg', '15-JAN-2019');
insert into hostel_night values('Sad',20000,'CBH','Veg', '30-JAN-2019');
insert into hostel_night values('Happy',34000,'Jhelum','NON Veg', '15-FEB-2019');
insert into hostel_night values('Fly',34000,'Ganga','NON Veg', '15-MAY-2019');



select * from hostel_night;

alter table hostel_night
add constraint hostel_night_hostel_fk
foreign key (h_name)
references hostel;

select * from hostel_night;

create table hostel_night1(
coupen_type varchar2(25),
h_name varchar2(25),
h_date date,
coupen_price number(10,2),
primary key (coupen_type,h_name, h_date));


insert into hostel_night1 values('Veg','CBH','15-JAN-2019',230);
insert into hostel_night1 values('Non Veg','Ganga','15-MAY-2019',210);
insert into hostel_night1 values('Non Veg','Jhelum','15-FEB-2019',200);
insert into hostel_night1 values('Veg','CBH','30-JAN-2019',180);
i

select * from hostel_night1;
alter table hostel_night1
add constraint hostel_night1_hostel_fk
foreign key (h_name)
references hostel;

--error
alter table hostel_night1
add constraints hostel_night_item_fk
foreign key (coupen_type,h_date)
references hostel_night(coupen_type,h_date);

create table caltural_night(
c_name varchar2(25) primary key,
c_budget number(10,2),
c_date date,
h_name varchar2(25));
select * from caltural_night;

insert into caltural_night values ('CL1',15000,'12-May-2018','CBH');
insert into caltural_night values ('CL2',25000,'12-SEP-2018','Ganga');
insert into caltural_night values ('CL3',35000,'12-APR-2019','Tapti');
insert into caltural_night values ('CL4',45000,'12-JUN-2019','Koyna');
insert into caltural_night values ('CL5',20000,'26-JUN-2019','Shipra');
insert into caltural_night values ('CL6',45000,'12-JUN-2019','Lohit');

alter table caltural_night
add constraint caltur_night_hostel_PK
foreign key (h_name)
references hostel;

select * from caltural_night;

show user;
grant select on hr.employees to hunk;
grant select on hr.employees to database;


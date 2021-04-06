create database libproject;
use libproject;
CREATE TABLE BOOKS (
    ISBN INT(100) NOT NULL,
    Book_Title VARCHAR(50) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Rental_Price INT(10) NOT NULL,
    Status VARCHAR(30),
    Author VARCHAR(50) NOT NULL,
    Publisher VARCHAR(50) NOT NULL,
    PRIMARY KEY (ISBN)
);

CREATE TABLE Employee (
    Emp_ID INT(10) NOT NULL,
    Emp_Name VARCHAR(50) NOT NULL,
    Position VARCHAR(30) NOT NULL,
    Salary INT(10) NOT NULL,
    PRIMARY KEY (Emp_ID)
);

CREATE TABLE Customer (
    Customer_ID INT(10) NOT NULL,
    Customer_Name VARCHAR(50),
    Customer_Address VARCHAR(100) NOT NULL,
    Registration_Date DATE NOT NULL,
    PRIMARY KEY (Customer_ID)
);

CREATE TABLE Branch (
    Branch_No INT(10) NOT NULL,
    Manager_ID INT(10) NOT NULL,
    Branch_Address VARCHAR(100) NOT NULL,
    Contact_No INT(10) NOT NULL,
    PRIMARY KEY (Branch_No)
);

CREATE TABLE Issue_Status (
    Issue_ID INT(10) NOT NULL,
    Issue_Cust INT(10) NOT NULL,
    Issued_Book_Name VARCHAR(50) NOT NULL,
    Issue_Date DATE NOT NULL,
    isbn_book INT(10) NOT NULL,
    PRIMARY KEY (Issue_ID),
    CONSTRAINT FOREIGN KEY (isbn_book)
        REFERENCES BOOKS (ISBN),
    CONSTRAINT FOREIGN KEY (Issued_Cust)
        REFERENCES customer (customer_ID)
);

CREATE TABLE return_status (
    return_ID INT(10) NOT NULL,
    return_cust INT(10) NOT NULL,
    returned_book_name VARCHAR(50) NOT NULL,
    return_date DATE NOT NULL,
    isbn_book2 INT(10) NOT NULL,
    PRIMARY KEY (return_ID),
    CONSTRAINT FOREIGN KEY (return_cust)
        REFERENCES Issue_Status (Issue_Cust)
);

show tables;
describe books;
describe branch;
describe customer;
describe employee;
describe issue_status;
describe return_status;

insert into books values(1000,'Book 1','Comedy',5,'Available','Author 1','Pub 1');
insert into books values(1001,'Book 2','Sci-fi',3,'Available','Author 2','Pub 2');
insert into books values(1003,'Book 3','Romance',1,'Unavailable','Author 3','Pub 3');
insert into books values(1004,'Book 4','Thriller',7,'Available','Author 4','Pub 4');
select * from books;

Alter table Branch add constraint foreign key(manager_ID) references employee(emp_ID);
select * from branch;

Insert into employee values (991,'Emp 1','Manager',30000);
Insert into employee values (992,'Emp 2','Worker',10000);
Insert into employee values (993,'Emp 3','Worker',10000);
Insert into employee values (994,'Emp 4','Reader',20000);
Insert into employee values (995,'Emp 5','Assist',20000);
Select * from employee;

Insert into branch values (1,991,'branch_addr1',987678245);
Insert into branch values (2,992,'branch_addr2',987678246);
Insert into branch values (3,993,'branch_addr3',987678247);
select * from branch;

Insert into customer values (11,'cus1','hom1','2008:10:10');
Insert into customer values (12,'cus2','hom2','2008:03:03');
Insert into customer values (13,'cus3','hom3','2009:03:03');
Insert into customer values (14,'cus4','hom4','2009:04:04');
select * from customer;

Insert into issue_status values (51,12,'book1','2010:01:01',1001);
Insert into issue_status values (52,14,'book2','2010:01:01',1004);
Select * from issue_status;

Insert into return_status values(61,12,'book1','2010:01:01',1001);
select * from return_status;

#Test Queries
Select customer_name from customer WHERE book_type = 'comedy';
Select issue_id, issued_cust from issue_status where isbn_book = 1004;






 

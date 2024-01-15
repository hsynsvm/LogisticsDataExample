create database Logistics_Management_DB
go
use Logistics_Management_DB
go

create table Customers
(
	ID int identity(25,1),
	NAME nvarchar(100),
	SURNAME nvarchar(100),
	TC nvarchar(11),
	BIRTHDATE date,
	GENDER varchar(1),
	CITY nvarchar(100),
	NATION nvarchar(100),
	AGE int, 
	constraint pk_customer primary key(ID),
)
create table Warehouses
(
	ID int identity(1,1),
	NAME nvarchar(100),
	DISTRICT nvarchar(100),
	CAPACITY int,
	NUMBER_OF_PRODUCT int,
	constraint pk_warehouse primary key(ID),
)
create table Employees
(
	ID int identity(1,1),
	REGISTRY int,
	NAME nvarchar(100),
	SURNAME nvarchar(100),
	GENDER varchar(1),
	TEL_NUMBER nvarchar(11),
	ADRESS nvarchar(150),
	constraint pk_employees primary key(ID),
)
create table Logistics_Vehicles
(
	ID int identity(1,1),
	Employees_ID int,
	NAME nvarchar(50),
	KIND nvarchar(50),
	CAPACITY int,
	AVAILABLE int,
	constraint pk_logisticsvehicles primary key(ID),
	Constraint fk_LogisticsvehiclesEmployees Foreign key(Employees_ID) References Employees(ID),
)
create table Supplier
(
	ID int identity(1,1),
	NAME nvarchar(100),
	SURNAME nvarchar(100),
	GENDER varchar(1),
	TEL_NUMBER nvarchar(11),
	constraint pk_supplier primary key(ID),
)
create table Common_Situatin
(
	Customers int,
	Warehouses int,
	Employees nvarchar(100),
	Constraint pk_CommonSituation primary key(Customers,Warehouses,Employees),
	Constraint fk_CommonSituatinCustomers foreign key(Customers) References Customers(ID),
)


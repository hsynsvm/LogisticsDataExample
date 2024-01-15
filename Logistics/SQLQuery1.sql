select * from Customers

select * from Employees

select * from Logistics_Vehicles

select * from Supplier

select * from Warehouses


delete from Customers Where ID=5

delete from Employees Where ID=1

delete from Logistics_Vehicles Where ID=2

delete from Supplier Where ID=3

delete from Warehouses Where ID=4


update Customers set NAME = 'Batuhan' where ID= 3

update Employees set NAME = 'Batuhan' where ID= 2

update Logistics_Vehicles set NAME = 'Batuhan' where ID= 6

update Supplier set NAME = 'Batuhan' where ID= 8

update Warehouses set NAME = 'Batuhan' where ID= 5

update Customers set NATION= 'TR', AGE= DATEDIFF(YEAR,BIRTHDATE,GETDATE())
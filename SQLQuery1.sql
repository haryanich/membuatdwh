CREATE DATABASE DWH_PROJECT
use DWH_Project;

CREATE TABLE DimCustomer (CustomerID INT NOT NULL PRIMARY KEY,
Firstname VARCHAR (50) NOT NULL,
Lastname VARCHAR (50) NOT NULL,
Age INT NOT NULL,
Gender VARCHAR (50) NOT NULL,
City VARCHAR(50) NOT NULL,
NomorHP VARCHAR(50) NOT NULL);


CREATE TABLE DimProduct (ProductID INT NOT NULL Primary key,
ProductName VARCHAR(50) NOT NULL,
ProductCategory varchar (50) NOT NULL,
ProductUnitPrice INT NOT NULL );

CREATE TABLE DimStatusOrder (StatusID INT NOT NULL PRIMARY KEY,
StatusOrder VARCHAR (50) NOT NULL,
StatusOrderDesc VARCHAR (50) NOT NULL);

CREATE TABLE FactSalesOrder (OrderID INT NOT NULL PRIMARY KEY,
Orderdate DATE NOT NULL,
Quantity INT NOT NULL,
Amount INT NOT NULL,
CustomerID INT FOREIGN KEY REFERENCES Dimcustomer(CustomerID),
ProductID INT FOREIGN KEY REFERENCES Dimproduct(ProductID),
StatusID INT FOREIGN KEY REFERENCES DimStatusOrder(StatusID));






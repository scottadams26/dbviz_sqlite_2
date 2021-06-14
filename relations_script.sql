
DROP TABLE "sales";
DROP TABLE "orders";
DROP TABLE "customers";
DROP TABLE "products";

CREATE TABLE sales (
SalesID INTEGER,
OrderID TEXT,
ProductID TEXT,
Sales REAL,
Quantity INTEGER,
Discount REAL,
Profit REAL,
PRIMARY KEY(SalesID)
FOREIGN KEY(OrderID) REFERENCES orders(OrderID)
FOREIGN KEY(ProductID) REFERENCES products(ProductID)
);

CREATE TABLE orders (
OrderID TEXT,
OrderDate TEXT,
ShipDate TEXT,
ShipMode TEXT,
CustomerID TEXT,
PRIMARY KEY(OrderID)
FOREIGN KEY(CustomerID) REFERENCES customers(CustomerID)
);

CREATE TABLE customers (
CustomerID TEXT,
CustomerName TEXT,
Segment TEXT,
Country TEXT,
City TEXT,
State TEXT,
PostalCode TEXT,
Region TEXT,
PRIMARY KEY(CustomerID)
);

CREATE TABLE products (
ProductID TEXT,
Category TEXT,
SubCategory TEXT,
ProductName TEXT,
PRIMARY KEY(ProductID)
);


CREATE TABLE Departments ( 
	DepartmentId TEXT NOT NULL PRIMARY KEY, 
	DepartmentName TEXT NOT NULL  
); 

CREATE TABLE Students (  
	StudentId TEXT NOT NULL PRIMARY KEY ,
	StudentName TEXT NOT NULL, 
	DepartmentId TEXT  NULL,   
	DateOfBirth DATE NULL  
);     
CREATE TABLE Subjects (  
	SubjectId TEXT NOT NULL PRIMARY KEY,  
	SubjectName TEXT NOT NULL  
); 
CREATE TABLE Marks (  
	StudentId INTEGER NOT NULL,  
	SubjectId INTEGER NOT NULL,  
	Mark INTEGER NULL  
);  
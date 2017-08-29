
DROP DATABASE IF EXISTS Bamazon;

CREATE DATABASE Bamazon;

USE Bamazon;

CREATE TABLE Products(
	
    ItemID INTEGER(10) AUTO_INCREMENT NOT NULL,
    ProductName VARCHAR(50) NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    Price DECIMAL(10) NOT NULL,
    StockQuantity INTEGER(10),
    primary key (ItemId)
);

INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Chocolate Chip Cookies','Food',1.99,200);


ALTER TABLE Products DROP COLUMN Price;
ALTER TABLE Products ADD COLUMN Price DECIMAL(10,2) NOT NULL;


INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Apple Pie','Food',3.99,100);



INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Delicious Amber Ale','Drink',4.99,300);
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Frozen Mango Margarita','Drink',5.99,150);
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Extra chocolatey Cafe Mocca','Drink',3.49,200);


UPDATE Products SET ProductName = "Apple Pies" WHERE ProductName = "Apple Pie";

UPDATE Products SET Price = 1.99 WHERE ProductName = "Chocolate Chip Cookies";
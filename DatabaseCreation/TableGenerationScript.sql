# Delete Existing Tables
#----------------------------
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS Sites;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Payments;
DROP TABLE IF EXISTS Stock;
DROP TABLE IF EXISTS OrderContents;
DROP TABLE IF EXISTS Suppliers;
DROP TABLE IF EXISTS WholeSaleProducts;
DROP TABLE IF EXISTS SupplierOrders;
DROP TABLE IF EXISTS SupplierOrderContents; 
DROP TABLE IF EXISTS ItemCatalogue;
# DROP VIEW IF EXISTS 
SET FOREIGN_KEY_CHECKS = 1;
#----------------------------

-- -----------------------------------------------------
-- Table Sites
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Sites (
  siteID INT NOT NULL AUTO_INCREMENT,
  location VARCHAR(100) NOT NULL,
  siteType VARCHAR(100) NOT NULL,
  postCode VARCHAR(8) NOT NULL,
  PRIMARY KEY (siteID));


-- -----------------------------------------------------
-- Table Employees
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Employees (
  employeeID INT NOT NULL AUTO_INCREMENT,
  firstName VARCHAR(50) NOT NULL,
  secondName VARCHAR(50) NOT NULL,
  email VARCHAR(150) NULL,
  jobRole VARCHAR(100) NULL,
  sitesSiteID INT NOT NULL,
  PRIMARY KEY (employeeID),
  INDEX fk_Employees_Sites1_idx (sitesSiteID ASC),
  CONSTRAINT fk_Employees_Sites1
    FOREIGN KEY (sitesSiteID)
    REFERENCES Sites (siteID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table Customers
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Customers (
  customerID INT NOT NULL AUTO_INCREMENT,
  firstName VARCHAR(50) NOT NULL,
  secondName VARCHAR(50) NOT NULL,
  street VARCHAR(100) NULL,
  houseName VARCHAR(100) NULL,
  postCode VARCHAR(7) NULL,
  PRIMARY KEY (customerID));


-- -----------------------------------------------------
-- Table Orders
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Orders (
  orderID INT NOT NULL AUTO_INCREMENT,
  orderDate DATE NULL,
  orderStatus VARCHAR(10) NULL,
  customersCustomerID INT NOT NULL,
  employeesEmployeeID INT NOT NULL,
  PRIMARY KEY (orderID),
  INDEX fk_Orders_Customers1_idx (customersCustomerID ASC),
  INDEX fk_Orders_Employees1_idx (employeesEmployeeID ASC),
  CONSTRAINT fk_Orders_Customers1
    FOREIGN KEY (customersCustomerID)
    REFERENCES Customers (customerID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Orders_Employees1
    FOREIGN KEY (employeesEmployeeID)
    REFERENCES Employees (employeeID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- -----------------------------------------------------
-- Table Payments
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Payments (
  ordersOrderID INT NOT NULL,
  orderValue Decimal(8,2) NOT NULL,
  paymentType VARCHAR(10) NULL,
  transactionID VARCHAR(45) NULL,
  transactionDate DATE NULL,
  INDEX fk_Payments_Orders1_idx (ordersOrderID ASC),
  PRIMARY KEY (ordersOrderID),
  CONSTRAINT fk_Payments_Orders1
    FOREIGN KEY (ordersOrderID)
    REFERENCES Orders (orderID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


  
-- -----------------------------------------------------
-- Table ItemCatalogue
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ItemCatalogue (
  catalogueItemID INT NOT NULL AUTO_INCREMENT,
  productName VARCHAR(100) NULL,
  productDescription VARCHAR(300) NULL,
  retailPrice DECIMAL(8,2) NULL,
  PRIMARY KEY (catalogueItemID));


-- -----------------------------------------------------
-- Table Stock
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS Stock (
  stockID INT NOT NULL AUTO_INCREMENT,
  sitesSiteID INT NOT NULL,
  reservedOrSold VARCHAR(4) NULL,
  itemCatalogueCatalogueItemID INT NOT NULL,
  PRIMARY KEY (stockID),
  INDEX fk_Stock_Sites1_idx (sitesSiteID ASC),
  INDEX fk_Stock_ItemCatalogue1_idx (itemCatalogueCatalogueItemID ASC),
  CONSTRAINT fk_Stock_Sites1
    FOREIGN KEY (sitesSiteID)
    REFERENCES Sites (siteID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Stock_ItemCatalogue1
    FOREIGN KEY (itemCatalogueCatalogueItemID)
    REFERENCES ItemCatalogue (catalogueItemID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- -----------------------------------------------------
-- Table OrderContents
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS OrderContents (
  ordersOrderID INT NOT NULL,
  stockItemID INT NOT NULL,
  INDEX fk_OrderContents_Orders1_idx (ordersOrderID ASC),
  INDEX fk_OrderContents_Stock1_idx (stockItemID ASC),
  CONSTRAINT fk_OrderContents_Stock1
    FOREIGN KEY (stockItemID)
    REFERENCES Stock (stockID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_OrderContents_Orders1
    FOREIGN KEY (ordersOrderID)
    REFERENCES Orders (orderID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table Suppliers
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Suppliers (
  supplierID INT NOT NULL AUTO_INCREMENT,
  supplierName VARCHAR(100) NOT NULL,
  PRIMARY KEY (supplierID));



-- -----------------------------------------------------
-- Table SupplierOrders
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS SupplierOrders (
  supplierOrderID INT NOT NULL AUTO_INCREMENT,
  supplierOrderValue DECIMAL(10,2) NOT NULL,
  supplierOrderDate DATE NULL,
  PRIMARY KEY (supplierOrderID));


-- -----------------------------------------------------
-- Table SupplierOrderContents
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS SupplierOrderContents (
  supplierOrdersSupplierOrderID INT NOT NULL,
  stockItemID INT NOT NULL,
  itemCatalogueCatalogueItemID INT NOT NULL,
  suppliersSupplierID INT NOT NULL,
  unitCost DECIMAL(10,2) NULL,
  INDEX fk_SupplierOrderContents_SupplierOrders1_idx (supplierOrdersSupplierOrderID ASC),
  INDEX fk_SupplierOrderContents_Stock1_idx (stockItemID ASC),
  INDEX fk_SupplierOrderContents_ItemCatalogue1_idx (itemCatalogueCatalogueItemID ASC),
  INDEX fk_SupplierOrderContents_Suppliers1_idx (suppliersSupplierID ASC),
  CONSTRAINT fk_SupplierOrderContents_SupplierOrders1
    FOREIGN KEY (supplierOrdersSupplierOrderID)
    REFERENCES SupplierOrders (supplierOrderID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_SupplierOrderContents_Stock1
    FOREIGN KEY (stockItemID)
    REFERENCES Stock (stockID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_SupplierOrderContents_ItemCatalogue1
    FOREIGN KEY (itemCatalogueCatalogueItemID)
    REFERENCES ItemCatalogue (catalogueItemID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_SupplierOrderContents_Suppliers1
    FOREIGN KEY (suppliersSupplierID)
    REFERENCES Suppliers (supplierID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



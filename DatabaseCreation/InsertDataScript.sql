

-- ----------INSERT MOCK DATA ---


-- -----------------------------------------------------
-- Table Sites MOCK DATA
-- -----------------------------------------------------
  
INSERT INTO Sites (location, siteType, postcode) VALUES 
        ( 'stockport', 'hq', 'SK3 XXX'),
		( 'speke'    , 'warehouse' , 'L24 XXX'),
		( 'birmingham' , 'warehouse' , 'BH4 XXX'),
		( 'london', 'retail', 'SW1 XXX'),
		( 'cardiff', 'retail', 'CF10 XXX'),
		( 'york', 'retail', 'YO1 XXX'),
		( 'newcastle', 'retail', 'NE1 XXX'),
		( 'manchester', 'retail', 'M1 XXX');  


-- -----------------------------------------------------
-- Table Employees MOCK DATA
-- -----------------------------------------------------

INSERT INTO `Employees` (`firstName`, `secondName`, `email`, `jobRole`, `sitesSiteID`) VALUES
		( 'milton' , 'friedman', 'milton.friedman@baronanddrew.com', 'economic planner', 1), 
        ( 'adam' , 'smith', 'wealth.of.nations@baronanddrew.com', 'labour planner', 3), 
        ( 'genghis' , 'khan', 'genghis.khan@baronanddrew.com', 'human resources', 5), 
        ( 'mao' , 'zedong', '#equality@baronanddrew.com', 'gender and diversity inclusion enforcement officer', 1), 
        ( 'ronnie' , 'coleman', 'ronnie.coleman@baronanddrew.com', 'heavy lifter', 2), 
        ( 'dorian' , 'yates', 'dorian.yates@baronanddrew.com', 'heavy lifter', 3),
        ( 'shinji' , 'sogo', 'bullet.train@baronanddrew.com', 'head of beuracracy', 4), 
        ( 'alfred' , 'von schlieffen', 'plan@baronanddrew.com', 'site manager', 5), 
        ( 'clark' , 'stanley', 'snake.oil@baronanddrew.com', 'sales person', 5), 
        ( 'david' , 'ogilvy', 'david.ogilvy@baronanddrew.com', 'sales person', 6), 
        ( 'daniel' , 'pena', 'dan.pena@baronanddrew.com', 'sales person', 7), 
        ( 'walter' , 'anderson', 'tax.is.theft@baronanddrew.com', 'financial administrator', 1), 
		( 'andre' , 'maginot', 'security@baronanddrew.com', 'head of security', 1), 
		( 'arthur' , 'wellesley', 'duke.wellington@baronanddrew.com', 'head of logistics', 8), 
        ( 'hermes' , 'trismegistus', 'caduceus@baronanddrew.com', 'first aid', 8),
        ( 'barney' , 'bynamebeginswithb', 'bb@baronanddrew.com', 'generic', 4);
        
-- -----------------------------------------------------
-- Table Customers MOCK DATA
-- -----------------------------------------------------


 INSERT INTO `Customers` (`firstName`, `secondName`, `street`, `houseName`, `postCode`) VALUES 
        ( 'henri', 'ellenberger', 'creativeillness st', '1905' , 'SK3 XXX'), 
		( 'jean', 'piaget', 'developmentalpsychology rd', '1896' , 'M1 XXX'),
		( 'mircea', 'eliade', 'profane alley', '1907' , 'WA4 XXX'), 
		('joseph', 'campbell', 'heroesjourney ave', '1904' , 'CH4 XXX'), 
		('aldous', 'huxley', 'doorsofperception rd', '1894' , 'NE1 XXX'), 
		('william', 'james', 'pragmatism rd', '1842' , 'YO1 XXX'), 
		('kurt', 'godel', 'incompletenesstheorem st', '1906' , 'SK3 XXX'), 
		('marcus', 'aurelius', 'stoic st', '121' , 'SK8 XXX'), 
		('dante', 'alghieri', 'findingbeatrice ave', '1265' , 'M21 XXX'); 

-- -----------------------------------------------------
-- Table Orders MOCK DATA
-- -----------------------------------------------------

		 # orderID, date, status, customersCustomerID, employeesEmployeeID

   INSERT INTO `Orders` (`orderDate`, `orderStatus`, `customersCustomerID`, `employeesEmployeeID`) VALUES
		(STR_TO_DATE('17-JUL-2017', '%d-%b-%Y'), 'complete', 6, 11), 
        (STR_TO_DATE('18-JUL-2017', '%d-%b-%Y'), 'complete', 2, 9),
        (STR_TO_DATE('19-AUG-2017', '%d-%b-%Y'), 'complete', 1, 10),
        (STR_TO_DATE('20-OCT-2017', '%d-%b-%Y'), 'complete', 3, 8),
        (STR_TO_DATE('21-OCT-2017', '%d-%b-%Y'), 'complete', 4, 12),
        (STR_TO_DATE('22-NOV-2017', '%d-%b-%Y'), 'complete', 5, 13),
        (STR_TO_DATE('23-NOV-2017', '%d-%b-%Y'), 'complete', 6, 8),
        (STR_TO_DATE('24-NOV-2017', '%d-%b-%Y'), 'complete', 7, 9),
        (STR_TO_DATE('11-DEC-2017', '%d-%b-%Y'), 'complete', 8, 10),
        (STR_TO_DATE('10-DEC-2017', '%d-%b-%Y'), 'complete', 9, 11),
        (STR_TO_DATE('12-JAN-2018', '%d-%b-%Y'), 'complete', 8, 8),
        (STR_TO_DATE('13-JAN-2018', '%d-%b-%Y'), 'complete', 8, 8),
        (STR_TO_DATE('14-FEB-2018', '%d-%b-%Y'), 'incomplete', 7, 9),
        (STR_TO_DATE('15-FEB-2018', '%d-%b-%Y'), 'complete', 6, 10),
        (STR_TO_DATE('16-MAR-2018', '%d-%b-%Y'), 'complete', 5, 9),
        (STR_TO_DATE('27-MAR-2018', '%d-%b-%Y'), 'complete', 5, 10),
        (STR_TO_DATE('21-MAR-2018', '%d-%b-%Y'), 'incomplete', 4, 11),
        (STR_TO_DATE('10-APR-2018', '%d-%b-%Y'), 'incomplete', 3, 12),
        (STR_TO_DATE('11-APR-2018', '%d-%b-%Y'), 'complete', 8, 13),
        (STR_TO_DATE('12-APR-2018', '%d-%b-%Y'), 'incomplete', 9, 9);
        
        -- ------------------------------------------------------cust,employee
 
-- -----------------------------------------------------
-- Table ItemCatalogue
-- -----------------------------------------------------
         # catalogueItemID, productName, productDescription, productPrice
         
INSERT INTO `ItemCatalogue` (`productName`, `productDescription`, `retailPrice`) VALUES
		('gladius', 'a short roman sword', 25.00 ),
        ('book', 'picked at random from library, maybe youll like it maybe you wont', 5.00 ),
        ('granite block', 'stone cold', 50.00),
        ('bauxite', 'aluminium ore for all your needs', 10.50),
        ('dog', 'makes good memes, cute heckin pupper', 75.25 ),
        ('T21 tank', 'DA!', 10000.00 ),
        ('voynich manuscript', 'can you decipher it', 100.15 ),
        ('bag of salt', 'mixture of sodium chloride and fluoride', 9.99 ),
        ('halo 3', 'r.i.p bungie studios', 15.25 ),
        ('butterknife', 'banned in london', 0.50 ),
        ('joke', 'must have joke license in UK', 60.50),
        ('oak log', 'ideal for ship building', 49.99 ),
        ('agarikon', 'a rare mushroom with many unique  medicinal benefits', 75.00 ),
        ('500 miles', 'an absolute banger for all occasions', 0.20 ),
        ('HAL 9000', 'amazon alexa 2.0, the next big thing', 249.99 );
        
        
-- -----------------------------------------------------
-- Table Suppliers MOCK DATA
-- -----------------------------------------------------

		# supplierID, supplierName

INSERT INTO `Suppliers` (`supplierName`) VALUES 
        ('azda bruv'),  
        ('soma industries' ), 
        ('tescow' ),
        ('ye olde wholesale supplier' ) ,
        ('stock 4 u' ),  
        ('tax payer funded socialist state wholesaler' ),
        ('free market capitalism & sons' ),
        ('dont mix politics and work corp' );
        
 
  -- -----------------------------------------------------
-- Table SupplierOrders MOCK DATA
-- -----------------------------------------------------

INSERT INTO `SupplierOrders` (`supplierOrderValue`, `supplierOrderDate`) VALUES 
		(389.35, STR_TO_DATE('17-JUL-2016', '%d-%b-%Y')),
        (156.25, STR_TO_DATE('18-JUL-2016', '%d-%b-%Y')),
        (102.00, STR_TO_DATE('19-JUL-2016', '%d-%b-%Y')),
        (10224.25, STR_TO_DATE('20-JUL-2016', '%d-%b-%Y')),
        (262.35, STR_TO_DATE('21-JUL-2016', '%d-%b-%Y'));
 
-- -----------------------------------------------------
-- Table Stock MOCK DATA
-- -----------------------------------------------------

INSERT INTO `Stock` (`sitesSiteID`, `reservedOrSold`, `itemCatalogueCatalogueItemID`) VALUES
		(2,'res', 1),
        (3,'sold',1),
        (3,'resv' ,3),
        (3,'resv',5),
        (4,'sold',7),
        (5,'none',8),
        (6,'none',10),
        (7,'none',15),
        (8,'none',12),
        (3,'none',14),
        (2,'none',11),
        (3,'none',10),
        (4,'none',1),
        (5,'res',2),
        (6,'none',3),
        (7,'res',4),
        (8,'none',5),
        (2,'sold',6),
        (3,'sold',7),
        (4,'sold',8),
        (5,'sold',9),
        (6,'sold',2),
        (7,'sold',1),
        (8,'sold',1),
        (2,'sold',3),
        (3,'sold',1),
        (4,'sold',9),
        (5,'sold',1),
        (6,'sold',4),
        (7,'sold',9),
        (8,'sold',5),
        (2,'sold',6),
        (2,'sold',7),
        (3,'sold',8),
        (3,'sold',10),
        (3,'sold',9),
        (3,'sold',11),
        (4,'sold',9),
        (5,'sold',12),
        (6,'sold',13),
        (7,'sold',14),
        (8,'sold',15),
        (8,'sold',10),
        (7,'sold',9),
        (2,'sold',1),
        (2,'sold',2),
        (3,'sold',3),
        (4,'sold',4),
        (5,'sold',1);
        
    
-- -----------------------------------------------------
-- Table SupplierOrderContents MOCK DATA
-- -----------------------------------------------------

  INSERT INTO `SupplierOrderContents` (`supplierOrdersSupplierOrderID`, `stockItemID`, `itemCatalogueCatalogueItemID`, `suppliersSupplierID`, `unitCost`) VALUES
		(1,1,1,1,10.00),
		(1,2,1,1,10.00), 
        (1,3,3,3,25.00), 
        (1,4,5,5,25.00), 
        (1,5,7,8,75.00), 
        (1,6,8,1,4.00), 
        (1,7,10,3,0.25), 
        (1,8,15,1,200.00), 
        (1,9,12,5,40.00), 
        (1,10,14,8,0.10), 
        (2,11,11,4,10.00),
        (2,12,10,3,0.25),
        (2,13,1,1,10.00),
        (2,14,2,2,2.00),
        (2,15,3,3,25.00),
        (2,16,4,4,5.00),
        (2,17,5,5,25.00),
        (2,18,6,7,10.00),
        (2,19,7,8,75.00),
        (2,20,8,1,4.00),
        (3,21,9,2,10.00),
        (3,22,2,2,2.00),
        (3,23,1,1,10.00),
        (3,24,1,1,10.00),
        (3,25,3,3,25.00),
        (3,26,1,1,10.00),
        (3,27,9,2,10.00),
        (3,28,1,1,10.00),
        (3,29,4,4,5.00),
        (3,30,9,2,10.00),
        (4,31,5,5,25.00),
        (4,32,6,6,10000.00),
        (4,33,7,8,75.00),
        (4,34,8,1,4.00),
        (4,35,10,3,0.25),
        (4,36,9,2,10.00),
        (4,37,11,4, 10.00),
        (4,38,9,2,10.00),
        (4,39,12,5,40.00),
        (4,40,13,7,50.00),
        (5,41,14,8,0.10),
        (5,42,15,1,200.00),
        (5,43,10,3,0.25),
        (5,44,9,2,10.00),
        (5,45,1,1,10.00),
        (5,46,2,2,2.00),
        (5,47,3,3,25.00),
        (5,48,4,4,5.00),
        (5,49,1,1,10.00);


-- -----------------------------------------------------
-- Table OrderContents MOCK DATA
-- -----------------------------------------------------

INSERT INTO `OrderContents` (`ordersOrderID`, `stockItemID`) VALUES
        (1,2),
        (1,5),
		(2,18),
        (3,19),
        (4,20),
        (5,21),
        (6,22),
        (7,23),
        (8,24),
        (9,25),
        (9,26),
        (10,27),
        (11,28),
        (12,29),
        (13,30),
        (14,31),
        (15,32),
        (16,33),
        (16,34),
        (16,35),
        (16,36),
        (17,37),
        (17,38),
        (17,39),
        (18,40),
        (18,41),
        (18,42),
        (18,43),
        (18,44),
        (19,45),
        (20,46),
        (20,47),
        (20,48),
        (20,49);   
 
   
-- -----------------------------------------------------
-- Table Payments MOCK DATA
-- -----------------------------------------------------

  INSERT INTO `Payments` (`ordersOrderID`, `orderValue`, `paymentType`, `transactionID`, `transactionDate`) VALUES
		(1,  125.15, 'cash', 'abhdj78de6', STR_TO_DATE('17-JUL-2017', '%d-%b-%Y')), 
        (2,  10000.00, 'card', 'ahn7fh4hdj', STR_TO_DATE('18-JUL-2017', '%d-%b-%Y')),
        (3,  100.15, 'cash', 'ahfjmndbe4', STR_TO_DATE('19-AUG-2017', '%d-%b-%Y')),
        (4,  9.99, 'cash', 'aihfg9ikf4', STR_TO_DATE('21-OCT-2017', '%d-%b-%Y')),
        (5,  15.25, 'cash', 'bvsg46fh8d', STR_TO_DATE('21-OCT-2017', '%d-%b-%Y')),
        (6,  5.00, 'card', 'asdf444fg6', STR_TO_DATE('22-NOV-2017', '%d-%b-%Y')),
        (7,  25.00, 'card', '4grg4mnh4f', STR_TO_DATE('23-NOV-2017', '%d-%b-%Y')),
        (8,  25.00, 'card', 'ya7uhsn0f8', STR_TO_DATE('24-NOV-2017', '%d-%b-%Y')),
        (9,  75.00, 'card', 'yumyum755h', STR_TO_DATE('12-DEC-2017', '%d-%b-%Y')),
        (10, 15.25, 'card', 'ibn4tdsamn', STR_TO_DATE('10-DEC-2017', '%d-%b-%Y')),
        (11, 25.00, 'cash', 'bashkbdf4g', STR_TO_DATE('12-JAN-2018', '%d-%b-%Y')),
        (12, 10.50, 'cash', 'pbhdj78de6', STR_TO_DATE('13-JAN-2018', '%d-%b-%Y')),
        (13, 15.25, 'cash', 'ybhdj78de6', STR_TO_DATE('14-FEB-2018', '%d-%b-%Y')),
        (14, 75.25, 'card', 'wbhdj78de6', STR_TO_DATE('16-FEB-2018', '%d-%b-%Y')),
        (15, 10000.00, 'card', 'gbhdj78de6', STR_TO_DATE('16-MAR-2018', '%d-%b-%Y')),
        (16, 25.69, 'card', 'nbhdj78de6', STR_TO_DATE('27-MAR-2018', '%d-%b-%Y')),
        (17, 125.24, 'cheque', 'bbhdj78de6', STR_TO_DATE('28-MAR-2018', '%d-%b-%Y')),
        (18, 340.94, 'cash', 'xabhdj78de6', STR_TO_DATE('11-APR-2018', '%d-%b-%Y')),
        (19, 25.00, 'cash', 'vbhdj78de6', STR_TO_DATE('20-APR-2018', '%d-%b-%Y')),
        (20, 90.50, 'ethereum', 'zbhdj78de6', STR_TO_DATE('21-APR-2018', '%d-%b-%Y'));
   
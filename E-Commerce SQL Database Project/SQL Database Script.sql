-- Creation of Database
DROP DATABASE IF EXISTS bytes;
CREATE DATABASE bytes;
USE bytes;
/*
	1) Table Creations, total of 
	2) Inserting data in to table
    3) Update Values
    4) Insert Values
    5) Delete Values
*/
-- Employee Table
CREATE TABLE IF NOT EXISTS EMPLOYEE (
  Employee_ID char(6) NOT NULL,
  Employee_Name varchar(30) NOT NULL,
  Phone_No char(10),
  Address varchar(100),
  CONSTRAINT PK_Employee_ID PRIMARY KEY (Employee_ID)
);
-- Employee Data
INSERT INTO EMPLOYEE (Employee_ID, Employee_Name, Phone_No, Address)
VALUES 
('178320', 'Alice Keenan', '7028739201', '123 Elm St'),
('178321', 'Bob Roberts', '7028739202', '456 Oak St'),
('178322', 'Charlie Brown', '7028739203', '789 Pine St'),
('178323', 'David Smith', '7028739204', '101 Maple St'),
('178324', 'Eva Green', '7028739205', '202 Birch St'),
('178325', 'Fay Harris', '7028739206', '303 Cedar St'),
('178326', 'George King', '7028739207', '404 Walnut St'),
('178327', 'Hannah Lee', '7028739208', '505 Spruce St'),
('178328', 'Ivy Martin', '7028739209', '606 Fir St'),
('178329', 'Jack Nolan', '7028739210', '707 Redwood St'),
('178330', 'Kara O’Neill', '7028739211', '808 Pinewood St'),
('178331', 'Liam Phelps', '7028739212', '909 Cypress St'),
('178332', 'Megan Quinn', '7028739213', '1010 Willow St'),
('178333', 'Nina Reyes', '7028739214', '1111 Beach St'),
('178334', 'Oliver Scott', '7028739215', '1212 River St'),
('178335', 'Paul Taylor', '7028739216', '1313 Forest St'),
('178336', 'Quinn Upton', '7028739217', '1414 Oakwood St'),
('178337', 'Rita Vance', '7028739218', '1515 Brook St'),
('178338', 'Sam White', '7028739219', '1616 Field St'),
('178339', 'Tina Xavier', '7028739220', '1717 Hill St'),
('178340', 'Uma Young', '7028739221', '1818 Riverbend St'),
('178341', 'Victor Zane', '7028739222', '1919 Lakeshore St'),
('178342', 'Will Abbott', '7028739223', '2020 Golden St'),
('178343', 'Xander Blake', '7028739224', '2121 Mountain St'),
('178344', 'Yara Carter', '7028739225', '2222 Coastal St'),
('178345', 'Zoe Davidson', '7028739226', '2323 Desert St'),
('178346', 'Adam Evans', '7028739227', '2424 Highlands St'),
('178347', 'Bella Foster', '7028739228', '2525 Plains St'),
('178348', 'Carlos Graham', '7028739229', '2626 Greenway St'),
('178349', 'Diana Hale', '7028739230', '2727 Sunset St'),
('178350', 'Eli James', '7028739231', '2828 Clover St'),
('178351', 'Fiona Knox', '7028739232', '2929 Vine St'),
('178352', 'Greg Lee', '7028739233', '3030 Ridge St'),
('178353', 'Holly Moore', '7028739234', '3131 Valley St'),
('178354', 'Ian Nelson', '7028739235', '3232 Highlands View St'),
('178355', 'Julia Owens', '7028739236', '3333 Bayview St'),
('178356', 'Kyle Parker', '7028739237', '3434 Peak St'),
('178357', 'Lydia Quinn', '7028739238', '3535 Star St'),
('178358', 'Mike Roberts', '7028739239', '3636 Wildwood St'),
('178359', 'Nora Smith', '7028739240', '3737 Crestwood St'),
('178360', 'Owen Turner', '7028739241', '3838 Silverwood St'),
('178361', 'Penny Underwood', '7028739242', '3939 Boulder St'),
('178362', 'Quinn Vetter', '7028739243', '4040 Orchard St'),
('178363', 'Riley West', '7028739244', '4141 Moonlight St'),
('178364', 'Steve Yates', '7028739245', '4242 Twilight St'),
('178365', 'Tara Ziegler', '7028739246', '4343 Snowfall St'),
('178366', 'Ursula Arnold', '7028739247', '4444 Amber St'),
('178367', 'Victor Baker', '7028739248', '4545 Coral St'),
('178368', 'Willow Cole', '7028739249', '4646 Rosewood St'),
('178369', 'Xena Darling', '7028739250', '4747 Crystal St'),
('178370', 'Yasmin Foster', '7028739251', '4848 Oak St');

-- Update the address of a specific employee
UPDATE EMPLOYEE
SET Address = '456 Updated St'
WHERE Employee_ID = '178320';

 -- Insert temporary employee for deletion
INSERT INTO EMPLOYEE (Employee_ID, Employee_Name, Phone_No, Address)
VALUES ('TEMP01', 'Temp Employee', '7021234567', 'Temporary St');

-- Delete the temporary employee
DELETE FROM EMPLOYEE
WHERE Employee_ID = 'TEMP01';

-- Supplier Table
CREATE TABLE IF NOT EXISTS SUPPLIER (
  Supplier_ID char(15) NOT NULL,
  Supplier_Name varchar(30),
  Email varchar(50),
  Phone_No char(10),
  CONSTRAINT PK_Supplier_ID PRIMARY KEY (Supplier_ID)
);
-- Supplier Data
INSERT INTO SUPPLIER (Supplier_ID, Supplier_Name, Email, Phone_No)
VALUES
('S15243', 'NVIDIA', 'nvidia123@gmail.com', '7029455384'),
('S15244', 'Intel', 'intel456@gmail.com', '7029455385'),
('S15245', 'AMD', 'amd789@gmail.com', '7029455386'),
('S15246', 'Apple', 'apple101@gmail.com', '7029455387'),
('S15247', 'Microsoft', 'microsoft112@gmail.com', '7029455388'),
('S15248', 'Samsung', 'samsung123@gmail.com', '7029455389'),
('S15249', 'Sony', 'sony234@gmail.com', '7029455390'),
('S15250', 'LG Electronics', 'lg.electronics345@gmail.com', '7029455391'),
('S15251', 'Dell', 'dell456@gmail.com', '7029455392'),
('S15252', 'Lenovo', 'lenovo567@gmail.com', '7029455393'),
('S15253', 'HP', 'hp678@gmail.com', '7029455394'),
('S15254', 'Canon', 'canon789@gmail.com', '7029455395'),
('S15255', 'Panasonic', 'panasonic890@gmail.com', '7029455396'),
('S15256', 'Logitech', 'logitech123@gmail.com', '7029455397'),
('S15257', 'Epson', 'epson234@gmail.com', '7029455398'),
('S15258', 'Seagate', 'seagate345@gmail.com', '7029455399'),
('S15259', 'Western Digital', 'wd456@gmail.com', '7029455400'),
('S15260', 'Corsair', 'corsair567@gmail.com', '7029455401'),
('S15261', 'Kingston', 'kingston678@gmail.com', '7029455402'),
('S15262', 'Micron', 'micron789@gmail.com', '7029455403'),
('S15263', 'G.Skill', 'gskill890@gmail.com', '7029455404'),
('S15264', 'Team Group', 'teamgroup123@gmail.com', '7029455405'),
('S15265', 'Asus', 'asus234@gmail.com', '7029455406'),
('S15266', 'MSI', 'msi345@gmail.com', '7029455407'),
('S15267', 'ZOTAC', 'zotac456@gmail.com', '7029455408'),
('S15268', 'Razer', 'razer567@gmail.com', '7029455409'),
('S15269', 'Acer', 'acer678@gmail.com', '7029455410'),
('S15270', 'XFX', 'xfx789@gmail.com', '7029455411'),
('S15271', 'Pny Technologies', 'pny123@gmail.com', '7029455412'),
('S15272', 'HyperX', 'hyperx234@gmail.com', '7029455413'),
('S15273', 'Samsung Electronics', 'samsung.electronics345@gmail.com', '7029455414'),
('S15274', 'Micronics', 'micronics456@gmail.com', '7029455415'),
('S15275', 'Cooler Master', 'coolermaster567@gmail.com', '7029455416'),
('S15276', 'Fractal Design', 'fractaldesign678@gmail.com', '7029455417'),
('S15277', 'NZXT', 'nzxt789@gmail.com', '7029455418'),
('S15278', 'Deepcool', 'deepcool890@gmail.com', '7029455419'),
('S15279', 'Phanteks', 'phanteks123@gmail.com', '7029455420'),
('S15280', 'Thermaltake', 'thermaltake234@gmail.com', '7029455421'),
('S15281', 'BitFenix', 'bitfenix345@gmail.com', '7029455422'),
('S15282', 'SilverStone', 'silverstone456@gmail.com', '7029455423'),
('S15283', 'Antec', 'antec567@gmail.com', '7029455424'),
('S15284', 'Rosewill', 'rosewill678@gmail.com', '7029455425'),
('S15285', 'Lian Li', 'lianli789@gmail.com', '7029455426'),
('S15286', 'Corsair Memory', 'corsair.memory890@gmail.com', '7029455427'),
('S15287', 'Thermaltake Memory', 'thermaltake.memory123@gmail.com', '7029455428'),
('S15288', 'G.SKILL Memory', 'gskill.memory234@gmail.com', '7029455429'),
('S15289', 'ADATA', 'adata345@gmail.com', '7029455430'),
('S15290', 'Crucial', 'crucial456@gmail.com', '7029455431'),
('S15291', 'Lexar', 'lexar567@gmail.com', '7029455432'),
('S15292', 'Kingmax', 'kingmax678@gmail.com', '7029455433'),
('S15293', 'Transcend', 'transcend789@gmail.com', '7029455434'),
('S15294', 'Toshiba', 'toshiba890@gmail.com', '7029455435'),
('S15295', 'Western Digital Memory', 'wd.memory123@gmail.com', '7029455436'),
('S15296', 'Seagate Memory', 'seagate.memory234@gmail.com', '7029455437'),
('S15297', 'SanDisk', 'sandisk345@gmail.com', '7029455438'),
('S15298', 'Patriot Memory', 'patriot.memory456@gmail.com', '7029455439'),
('S15299', 'Team Memory', 'team.memory567@gmail.com', '7029455440'),
('S15300', 'Adata Memory', 'adata.memory678@gmail.com', '7029455441');

-- Update the email of a supplier
UPDATE SUPPLIER
SET Email = 'updated_email@nvidia.com'
WHERE Supplier_ID = 'S15243';

-- Insert temporary supplier for deletion
INSERT INTO SUPPLIER (Supplier_ID, Supplier_Name, Email, Phone_No)
VALUES ('TEMP02', 'Temporary Supplier', 'temp@supplier.com', '7029876543');

-- Delete the temporary supplier
DELETE FROM SUPPLIER
WHERE Supplier_ID = 'TEMP02';


-- Product Table
CREATE TABLE IF NOT EXISTS PRODUCT (
  Product_ID char(15) NOT NULL,
  Supplier_ID char(15) NOT NULL,
  Category varchar(30) NOT NULL,
  Price decimal(10,2),
  Wholesale_Price decimal(10,2),
  Product_Name varchar(30) NOT NULL,
  CONSTRAINT PK_Product_ID PRIMARY KEY (Product_ID),
  CONSTRAINT FK_Supplier_Product FOREIGN KEY (Supplier_ID) REFERENCES SUPPLIER(Supplier_ID)
);
-- Product Data
INSERT INTO PRODUCT (Product_ID, Supplier_ID, Category, Price, Wholesale_Price, Product_Name)
VALUES
('P37281', 'S15243', 'Graphics Card', 599.99, 499.99, 'GeForce RTX 3080'),
('P37282', 'S15244', 'Processor', 399.99, 299.99, 'Intel i7-13700K'),
('P37283', 'S15245', 'Motherboard', 199.99, 150.00, 'MSI MAG Z690'),
('P37284', 'S15246', 'RAM', 89.99, 69.99, 'Corsair Vengeance 16GB'),
('P37285', 'S15247', 'Storage', 149.99, 119.99, 'Samsung 970 EVO 1TB'),
('P37286', 'S15248', 'Graphics Card', 1200.00, 1000.00, 'RTX 4090'),
('P37287', 'S15249', 'Processor', 299.99, 230.00, 'AMD Ryzen 5 7600X'),
('P37288', 'S15250', 'Motherboard', 129.99, 100.00, 'Asus TUF Gaming B450'),
('P37289', 'S15251', 'RAM', 79.99, 60.00, 'G.Skill Ripjaws 8GB'),
('P37290', 'S15252', 'Storage', 79.99, 60.00, 'Western Digital Blue 500GB'),
('P37291', 'S15253', 'Graphics Card', 399.99, 349.99, 'GTX 1660 Super'),
('P37292', 'S15254', 'Processor', 499.99, 430.00, 'AMD Ryzen 9 5900X'),
('P37293', 'S15255', 'Motherboard', 229.99, 200.00, 'Gigabyte X570 Aorus'),
('P37294', 'S15256', 'RAM', 109.99, 90.00, 'Corsair Dominator 32GB'),
('P37295', 'S15257', 'Storage', 249.99, 220.00, 'Seagate Firecuda 2TB'),
('P37296', 'S15258', 'Graphics Card', 499.99, 400.00, 'RTX 3060 Ti'),
('P37297', 'S15259', 'Processor', 299.99, 250.00, 'Intel i5-13600K'),
('P37298', 'S15260', 'Motherboard', 199.99, 160.00, 'MSI MAG B550 TOMAHAWK'),
('P37299', 'S15261', 'RAM', 59.99, 40.00, 'Team T-Force 8GB'),
('P37300', 'S15262', 'Storage', 99.99, 80.00, 'Crucial MX500 1TB'),
('P37301', 'S15263', 'Graphics Card', 799.99, 650.00, 'RTX 3070'),
('P37302', 'S15264', 'Processor', 249.99, 200.00, 'AMD Ryzen 5 5600X'),
('P37303', 'S15265', 'Motherboard', 159.99, 130.00, 'Asus Prime B550M-A'),
('P37304', 'S15266', 'RAM', 64.99, 50.00, 'Kingston Fury 8GB'),
('P37305', 'S15267', 'Storage', 119.99, 100.00, 'SanDisk Extreme 1TB'),
('P37306', 'S15268', 'Graphics Card', 549.99, 450.00, 'RTX 3060'),
('P37307', 'S15269', 'Processor', 229.99, 190.00, 'Intel i5-12600K'),
('P37308', 'S15270', 'Motherboard', 189.99, 150.00, 'Gigabyte B460M DS3H'),
('P37309', 'S15271', 'RAM', 39.99, 30.00, 'Patriot Viper 4GB'),
('P37310', 'S15272', 'Storage', 169.99, 140.00, 'PNY XLR8 1TB'),
('P37311', 'S15273', 'Graphics Card', 399.99, 350.00, 'GTX 1650 Super'),
('P37312', 'S15274', 'Processor', 369.99, 310.00, 'AMD Ryzen 7 5800X'),
('P37313', 'S15275', 'Motherboard', 219.99, 180.00, 'MSI MPG Z490 GAMING EDGE'),
('P37314', 'S15276', 'RAM', 99.99, 75.00, 'Corsair Vengeance LPX 16GB'),
('P37315', 'S15277', 'Storage', 59.99, 50.00, 'Kingston A2000 500GB'),
('P37316', 'S15278', 'Graphics Card', 279.99, 230.00, 'RX 6700 XT'),
('P37317', 'S15279', 'Processor', 219.99, 180.00, 'Intel i3-12100F'),
('P37318', 'S15280', 'Motherboard', 249.99, 200.00, 'Asus ROG Strix B550-F'),
('P37319', 'S15281', 'RAM', 119.99, 90.00, 'Team Elite 16GB'),
('P37320', 'S15282', 'Storage', 89.99, 70.00, 'Western Digital Green 500GB'),
('P37321', 'S15283', 'Graphics Card', 1099.99, 950.00, 'RTX 4080'),
('P37322', 'S15284', 'Processor', 499.99, 450.00, 'Intel i9-11900K'),
('P37323', 'S15285', 'Motherboard', 249.99, 210.00, 'Gigabyte Z590 AORUS'),
('P37324', 'S15286', 'RAM', 89.99, 70.00, 'HyperX Fury 16GB'),
('P37325', 'S15287', 'Storage', 179.99, 150.00, 'Samsung 860 EVO 1TB'),
('P37326', 'S15288', 'Graphics Card', 899.99, 750.00, 'RTX 3070 Ti'),
('P37327', 'S15289', 'Processor', 249.99, 210.00, 'AMD Ryzen 7 5800X'),
('P37328', 'S15290', 'Motherboard', 159.99, 130.00, 'MSI B450M Pro-M2'),
('P37329', 'S15291', 'RAM', 69.99, 55.00, 'Adata XPG 8GB'),
('P37330', 'S15292', 'Storage', 299.99, 260.00, 'Seagate BarraCuda 2TB'),
('P37331', 'S15243', 'Graphics Card', 649.99, 549.99, 'RTX 4070'),
('P37332', 'S15244', 'Processor', 479.99, 400.00, 'Intel i9-13900K'),
('P37333', 'S15245', 'Motherboard', 219.99, 190.00, 'Asus ROG Crosshair X670E'),
('P37334', 'S15246', 'RAM', 149.99, 120.00, 'Corsair Vengeance 32GB'),
('P37335', 'S15247', 'Storage', 159.99, 130.00, 'Samsung 980 PRO 1TB'),
('P37336', 'S15248', 'Graphics Card', 999.99, 800.00, 'RTX 4080 Super'),
('P37337', 'S15249', 'Processor', 379.99, 320.00, 'AMD Ryzen 7 7700X'),
('P37338', 'S15250', 'Motherboard', 259.99, 220.00, 'Gigabyte AORUS Master'),
('P37339', 'S15251', 'RAM', 129.99, 100.00, 'Kingston HyperX 16GB'),
('P37340', 'S15252', 'Storage', 89.99, 70.00, 'Crucial P3 500GB'),
('P37341', 'S15253', 'Graphics Card', 489.99, 430.00, 'RTX 3060'),
('P37342', 'S15254', 'Processor', 429.99, 350.00, 'Intel i7-12700K'),
('P37343', 'S15255', 'Motherboard', 279.99, 230.00, 'MSI MEG Z690 ACE'),
('P37344', 'S15256', 'RAM', 169.99, 140.00, 'Corsair Vengeance LPX 64GB'),
('P37345', 'S15257', 'Storage', 219.99, 180.00, 'Western Digital Black 1TB'),
('P37346', 'S15258', 'Graphics Card', 849.99, 700.00, 'RTX 3080 Ti'),
('P37347', 'S15259', 'Processor', 249.99, 200.00, 'AMD Ryzen 5 5600G'),
('P37348', 'S15260', 'Motherboard', 149.99, 120.00, 'Asrock B550M Steel Legend'),
('P37349', 'S15261', 'RAM', 69.99, 50.00, 'Adata XPG 8GB'),
('P37350', 'S15262', 'Storage', 179.99, 150.00, 'SanDisk Ultra 1TB');

-- Update the price of a product
UPDATE PRODUCT
SET Price = 699.99
WHERE Product_ID = 'P37281';

-- Insert temporary product for deletion
INSERT INTO PRODUCT (Product_ID, Supplier_ID, Category, Price, Wholesale_Price, Product_Name)
VALUES ('TEMP03', 'S15243', 'Temporary Category', 99.99, 79.99, 'Temporary Product');

-- Delete the temporary product
DELETE FROM PRODUCT
WHERE Product_ID = 'TEMP03';

-- Sorder Table
CREATE TABLE IF NOT EXISTS SORDER (
  Order_ID char(15) NOT NULL,
  Employee_ID char(6) NOT NULL,
  Order_Date date,
  Supplier_ID char(15) NOT NULL,
  CONSTRAINT PK_Order_ID PRIMARY KEY (Order_ID),
  CONSTRAINT FK_Employee_Sorder FOREIGN KEY (Employee_ID) REFERENCES EMPLOYEE(Employee_ID),
  CONSTRAINT FK_Supplier_Sorder FOREIGN KEY (Supplier_ID) REFERENCES SUPPLIER(Supplier_ID)
);
-- Sorder Data
INSERT INTO SORDER (Order_ID, Employee_ID, Order_Date, Supplier_ID)
VALUES
('O5732001', '178320', '2024-04-22', 'S15243'),
('O5732002', '178321', '2023-12-14', 'S15244'),
('O5732003', '178322', '2023-06-05', 'S15245'),
('O5732004', '178323', '2022-11-18', 'S15246'),
('O5732005', '178324', '2024-02-28', 'S15247'),
('O5732006', '178325', '2023-03-25', 'S15248'),
('O5732007', '178326', '2024-01-10', 'S15249'),
('O5732008', '178327', '2023-08-17', 'S15250'),
('O5732009', '178328', '2023-09-02', 'S15251'),
('O5732010', '178329', '2024-06-03', 'S15252'),
('O5732011', '178320', '2023-11-07', 'S15253'),
('O5732012', '178321', '2024-07-19', 'S15254'),
('O5732013', '178322', '2023-12-25', 'S15255'),
('O5732014', '178323', '2022-07-20', 'S15256'),
('O5732015', '178324', '2023-10-15', 'S15257'),
('O5732016', '178325', '2024-03-09', 'S15258'),
('O5732017', '178326', '2023-05-12', 'S15259'),
('O5732018', '178327', '2024-09-30', 'S15260'),
('O5732019', '178328', '2024-08-22', 'S15261'),
('O5732020', '178329', '2023-04-11', 'S15262'),
('O5732021', '178320', '2023-12-06', 'S15263'),
('O5732022', '178321', '2023-02-18', 'S15264'),
('O5732023', '178322', '2024-05-17', 'S15265'),
('O5732024', '178323', '2022-10-01', 'S15266'),
('O5732025', '178324', '2024-07-04', 'S15267'),
('O5732026', '178325', '2023-09-14', 'S15268'),
('O5732027', '178326', '2022-06-19', 'S15269'),
('O5732028', '178327', '2024-05-05', 'S15270'),
('O5732029', '178328', '2023-11-21', 'S15271'),
('O5732030', '178329', '2023-05-30', 'S15272'),
('O5732031', '178320', '2022-03-04', 'S15273'),
('O5732032', '178321', '2024-02-17', 'S15274'),
('O5732033', '178322', '2023-07-11', 'S15275'),
('O5732034', '178323', '2022-12-10', 'S15276'),
('O5732035', '178324', '2023-05-24', 'S15277'),
('O5732036', '178325', '2024-04-18', 'S15278'),
('O5732037', '178326', '2023-08-09', 'S15279'),
('O5732038', '178327', '2024-06-25', 'S15280'),
('O5732039', '178328', '2023-10-30', 'S15281'),
('O5732040', '178329', '2023-12-13', 'S15282'),
('O5732041', '178320', '2024-01-21', 'S15283'),
('O5732042', '178321', '2023-08-29', 'S15284'),
('O5732043', '178322', '2023-11-03', 'S15285'),
('O5732044', '178323', '2024-10-14', 'S15286'),
('O5732045', '178324', '2024-03-20', 'S15287'),
('O5732046', '178325', '2022-09-22', 'S15288'),
('O5732047', '178326', '2023-06-30', 'S15289'),
('O5732048', '178327', '2024-07-08', 'S15290'),
('O5732049', '178328', '2022-08-03', 'S15291'),
('O5732050', '178329', '2023-04-23', 'S15292');

-- Update the order date for an existing order
UPDATE SORDER
SET Order_Date = '2024-12-31'
WHERE Order_ID = 'O5732001';

-- Insert temporary order for deletion
INSERT INTO SORDER (Order_ID, Employee_ID, Order_Date, Supplier_ID)
VALUES ('TEMP04', '178320', '2023-12-25', 'S15243');

-- Delete the temporary order
DELETE FROM SORDER
WHERE Order_ID = 'TEMP04';


-- Porder Table
CREATE TABLE IF NOT EXISTS PORDER (
  Order_ID char(15) NOT NULL,
  Product_ID char(15) NOT NULL,
  Quantity int,
  CONSTRAINT PK_Porder_ID PRIMARY KEY (Order_ID, Product_ID),
  CONSTRAINT FK_Order_Porder FOREIGN KEY (Order_ID) REFERENCES SORDER(Order_ID),
  CONSTRAINT FK_Product_Porder FOREIGN KEY (Product_ID) REFERENCES PRODUCT(Product_ID)
);
-- Porder Data
INSERT INTO PORDER (Order_ID, Product_ID, Quantity)
VALUES
('O5732001', 'P37281', 15),
('O5732002', 'P37282', 30),
('O5732003', 'P37283', 12),
('O5732004', 'P37284', 50),
('O5732005', 'P37285', 20),
('O5732006', 'P37286', 25),
('O5732007', 'P37287', 60),
('O5732008', 'P37288', 100),
('O5732009', 'P37289', 7),
('O5732010', 'P37290', 10),
('O5732011', 'P37291', 55),
('O5732012', 'P37292', 14),
('O5732013', 'P37293', 22),
('O5732014', 'P37294', 13),
('O5732015', 'P37295', 40),
('O5732016', 'P37296', 18),
('O5732017', 'P37297', 33),
('O5732018', 'P37298', 70),
('O5732019', 'P37299', 9),
('O5732020', 'P37300', 45),
('O5732021', 'P37301', 23),
('O5732022', 'P37302', 65),
('O5732023', 'P37303', 35),
('O5732024', 'P37304', 50),
('O5732025', 'P37305', 10),
('O5732026', 'P37306', 5),
('O5732027', 'P37307', 40),
('O5732028', 'P37308', 12),
('O5732029', 'P37309', 16),
('O5732030', 'P37310', 60),
('O5732031', 'P37311', 30),
('O5732032', 'P37312', 25),
('O5732033', 'P37313', 20),
('O5732034', 'P37314', 45),
('O5732035', 'P37315', 75),
('O5732036', 'P37316', 11),
('O5732037', 'P37317', 65),
('O5732038', 'P37318', 50),
('O5732039', 'P37319', 24),
('O5732040', 'P37320', 39),
('O5732041', 'P37321', 27),
('O5732042', 'P37322', 31),
('O5732043', 'P37323', 19),
('O5732044', 'P37324', 22),
('O5732045', 'P37325', 36),
('O5732046', 'P37326', 10),
('O5732047', 'P37327', 11),
('O5732048', 'P37328', 21),
('O5732049', 'P37329', 15),
('O5732050', 'P37330', 26);

-- Update the quantity of a product in an order
UPDATE PORDER
SET Quantity = 50
WHERE Order_ID = 'O5732001' AND Product_ID = 'P37281';

-- Insert temporary order for deleletion
INSERT INTO SORDER (Order_ID, Employee_ID, Order_Date, Supplier_ID)
VALUES ('TEMP05', '178320', '2023-12-25', 'S15243');

-- Insert temporary product order for deletion
INSERT INTO PORDER (Order_ID, Product_ID, Quantity)
VALUES ('TEMP05', 'P37281', 10);

-- Delete the temporary product order
DELETE FROM PORDER
WHERE Order_ID = 'TEMP05' AND Product_ID = 'P37281';

-- Delete the tempraory order
DELETE FROM SORDER
WHERE Order_ID = 'TEMP05';

-- Inventory Table
CREATE TABLE IF NOT EXISTS INVENTORY (
  Inventory_ID char(15) NOT NULL,
  Product_ID char(15) NOT NULL,
  Stock_Quantity int,
  CONSTRAINT PK_Inventory_ID PRIMARY KEY (Inventory_ID),
  CONSTRAINT FK_Product_Inventory FOREIGN KEY (Product_ID) REFERENCES PRODUCT(Product_ID)
);
-- Inventory Data
INSERT INTO INVENTORY (Inventory_ID, Product_ID, Stock_Quantity)
VALUES
('I78289', 'P37330', 0),
('I78290', 'P37329', 0),
('I78291', 'P37328', 15),
('I78292', 'P37327', 25),
('I78293', 'P37326', 10),
('I78294', 'P37325', 30),
('I78295', 'P37324', 35),
('I78296', 'P37323', 22),
('I78297', 'P37322', 18),
('I78298', 'P37321', 50),
('I78299', 'P37320', 17),
('I78300', 'P37319', 28),
('I78301', 'P37318', 33),
('I78302', 'P37317', 11),
('I78303', 'P37316', 29),
('I78304', 'P37315', 42),
('I78305', 'P37314', 36),
('I78306', 'P37313', 55),
('I78307', 'P37312', 19),
('I78308', 'P37311', 23),
('I78309', 'P37310', 14),
('I78310', 'P37309', 60),
('I78311', 'P37308', 25),
('I78312', 'P37307', 30),
('I78313', 'P37306', 50),
('I78314', 'P37305', 5),
('I78315', 'P37304', 18),
('I78316', 'P37303', 40),
('I78317', 'P37302', 33),
('I78318', 'P37301', 38),
('I78319', 'P37300', 27),
('I78320', 'P37299', 45),
('I78321', 'P37298', 22),
('I78322', 'P37297', 47),
('I78323', 'P37296', 55),
('I78324', 'P37295', 50),
('I78325', 'P37294', 12),
('I78326', 'P37293', 24),
('I78327', 'P37292', 39),
('I78328', 'P37291', 10),
('I78329', 'P37290', 26),
('I78330', 'P37289', 7),
('I78331', 'P37288', 33),
('I78332', 'P37287', 31),
('I78333', 'P37286', 29),
('I78334', 'P37285', 23),
('I78335', 'P37284', 35),
('I78336', 'P37283', 17),
('I78337', 'P37282', 41),
('I78338', 'P37281', 28);

-- Update the stock quantity for an inventory item
UPDATE INVENTORY
SET Stock_Quantity = 20
WHERE Inventory_ID = 'I78289';

-- Insert temporary inventory record for deletion
INSERT INTO INVENTORY (Inventory_ID, Product_ID, Stock_Quantity)
VALUES ('TEMP06', 'P37330', 5);

-- Delete the temporary inventory record
DELETE FROM INVENTORY
WHERE Inventory_ID = 'TEMP06';

-- Sale Table
CREATE TABLE IF NOT EXISTS SALE (
  Sale_ID char(15) NOT NULL,
  Sales_Date date,
  Quantity_Sold int,
  Product_ID char(15) NOT NULL,
  Revenue decimal(10,2),
  CONSTRAINT PK_Sale_ID PRIMARY KEY (Sale_ID),
  CONSTRAINT FK_Product_Sale FOREIGN KEY (Product_ID) REFERENCES PRODUCT(Product_ID)
);
-- Sales Data
INSERT INTO SALE (Sale_ID, Sales_Date, Quantity_Sold, Product_ID, Revenue)
VALUES
('574839', '2023-01-15', 5, 'P37330', 2999.95),
('380528', '2023-02-20', 3, 'P37329', 1799.97),
('763049', '2023-03-03', 10, 'P37328', 5999.90),
('182034', '2023-04-10', 2, 'P37327', 999.98),
('930182', '2023-05-18', 15, 'P37326', 7499.85),
('532084', '2023-06-22', 7, 'P37325', 3499.93),
('276510', '2023-07-05', 12, 'P37324', 7199.88),
('659381', '2023-08-14', 8, 'P37323', 3999.92),
('450173', '2023-09-02', 4, 'P37322', 2399.96),
('148023', '2023-10-21', 9, 'P37321', 5399.91),
('834762', '2023-11-12', 6, 'P37320', 3599.94),
('953710', '2024-01-30', 11, 'P37319', 6499.89), 
('382048', '2024-02-25', 5, 'P37318', 2999.95), 
('291576', '2022-02-17', 7, 'P37317', 4199.93),
('760239', '2022-03-12', 8, 'P37316', 4799.92),
('315804', '2022-04-03', 2, 'P37315', 1199.98),
('406927', '2022-05-20', 4, 'P37314', 2399.96),
('182675', '2022-06-30', 15, 'P37313', 8999.85),
('702315', '2022-07-28', 10, 'P37312', 5999.90),
('873640', '2022-08-11', 6, 'P37311', 3599.94),
('527830', '2022-09-17', 3, 'P37310', 1799.97),
('219601', '2022-10-05', 9, 'P37309', 5399.91),
('186453', '2024-03-01', 12, 'P37308', 7199.88), 
('843129', '2024-04-14', 5, 'P37307', 2999.95), 
('749601', '2023-01-03', 7, 'P37306', 3499.93),
('168295', '2023-02-15', 8, 'P37305', 3999.96),
('905376', '2023-03-21', 6, 'P37304', 3599.94),
('520194', '2023-04-12', 5, 'P37303', 2999.95),
('124857', '2023-05-23', 3, 'P37302', 1799.97),
('673815', '2023-06-18', 9, 'P37301', 5399.91),
('592083', '2023-07-30', 4, 'P37300', 2399.96),
('384601', '2023-08-02', 10, 'P37299', 5999.90),
('921745', '2023-09-25', 6, 'P37298', 3599.94),
('763101', '2023-10-13', 8, 'P37297', 4799.92),
('834250', '2023-11-06', 7, 'P37296', 4199.93),
('753684', '2023-12-09', 5, 'P37295', 2999.95),
('326451', '2022-01-08', 3, 'P37294', 1799.97),
('912746', '2022-02-04', 11, 'P37293', 6499.89),
('380126', '2022-03-17', 9, 'P37292', 5399.91),
('174390', '2022-04-28', 8, 'P37291', 4799.92),
('593871', '2022-05-05', 12, 'P37290', 7199.88),
('681092', '2022-06-11', 10, 'P37289', 5999.90),
('703126', '2022-07-19', 6, 'P37288', 3599.94),
('945701', '2022-08-23', 4, 'P37287', 2399.96),
('694830', '2022-09-30', 3, 'P37286', 1799.97),
('810456', '2022-10-15', 5, 'P37285', 2999.95),
('327590', '2022-11-20', 15, 'P37284', 8999.85),
('512304', '2022-12-03', 8, 'P37283', 4799.92),
('671903', '2023-01-14', 6, 'P37282', 3599.94),
('210856', '2024-02-22', 7, 'P37281', 4199.93); 

-- Update the revenue for a specific sale
UPDATE SALE
SET Revenue = 5000.00
WHERE Sale_ID = '574839';

-- Insert temporary sale record for deletion
INSERT INTO SALE (Sale_ID, Sales_Date, Quantity_Sold, Product_ID, Revenue)
VALUES ('TEMP07', '2023-12-25', 1, 'P37281', 100.00);

-- Delete the temporary sale record
DELETE FROM SALE
WHERE Sale_ID = 'TEMP07';
/*
	Queries to address business problems
	#'s 1 - 15
*/
-- Query #1: What is the total inventory by product category?
SELECT P.Category, SUM(I.Stock_Quantity) AS 'Total Stock Quantity'
FROM PRODUCT P
JOIN INVENTORY I ON P.Product_ID = I.Product_ID
GROUP BY P.Category
ORDER BY SUM(I.Stock_Quantity) DESC;

-- Query #2: What is the total monetary value of inventory?
SELECT SUM(I.Stock_Quantity * P.Price) AS 'Total Inventory Value'
FROM PRODUCT P
JOIN INVENTORY I ON P.Product_ID = I.Product_ID;

-- Query #3: Which products are currently out of stock?
SELECT P.Product_ID AS 'Product ID', P.Product_Name AS 'Product Name', I.Stock_Quantity AS 'Stock Quantity'
FROM PRODUCT P
JOIN INVENTORY I ON P.Product_ID = I.Product_ID
WHERE I.Stock_Quantity = 0;

-- Query #4: Which employees are linked to high-revenue sales?
SELECT Employee_Name AS 'Employee Name'
FROM EMPLOYEE
WHERE Employee_ID IN (
    SELECT DISTINCT Employee_ID
    FROM SORDER
    WHERE Order_ID IN (
        SELECT Order_ID
        FROM SALE
        WHERE Revenue > 8000
    )
)
ORDER BY Employee_Name ASC;

-- Query #5: What is the total revenue generated by each product category?
SELECT p.Category, SUM(s.Revenue) AS 'Total Revenue'
FROM SALE s
JOIN PRODUCT p ON s.Product_ID = p.Product_ID
GROUP BY p.Category
ORDER BY SUM(s.Revenue) DESC;

-- Query #6: What was the total cost spent on products in 2023?
SELECT SUM(Price) AS 'Total Cost in Products in 2023'
FROM SORDER 
JOIN PRODUCT ON SORDER.Supplier_ID = PRODUCT.Supplier_ID
WHERE ORDER_DATE LIKE '%2023%';

-- Query #7: What are the top 5 most-ordered products by total cost?
SELECT Product_Name AS 'Product Name', Quantity, Wholesale_Price AS 'Wholesale Price', SUM(Quantity * Wholesale_Price) AS 'Total Cost Spent'
FROM PRODUCT, PORDER
WHERE PRODUCT.Product_ID = PORDER.Product_ID
GROUP BY Product_Name, Quantity, Wholesale_Price
HAVING SUM(Quantity * Wholesale_Price) > 13900
ORDER BY SUM(Quantity * Wholesale_Price) DESC
LIMIT 5;

-- Query #8: What are the current inventory levels for the most popular products?
SELECT DISTINCT Product_Name AS 'Product Name', COUNT(Stock_Quantity) AS 'Number in Stock'
FROM PRODUCT, INVENTORY
WHERE PRODUCT.Product_ID = INVENTORY.Product_ID
AND Product_Name IN ('RTX 4080', 'RTX 4090', 'GTX 1660 Super', 'RTX 3070', 'Intel i9-11900K')
GROUP BY Product_Name
ORDER BY COUNT(Stock_Quantity) ASC;

-- Query #9: What are the least-ordered products by cost?
SELECT Product_Name AS 'Product Name', Quantity, Wholesale_Price AS 'Wholesale Price', SUM(Quantity * Wholesale_Price) AS 'Total Cost'
FROM PRODUCT, PORDER
WHERE PRODUCT.Product_ID = PORDER.Product_ID
GROUP BY Product_Name, Quantity, Wholesale_Price
HAVING SUM(Quantity * Wholesale_Price) < 1000
ORDER BY SUM(Quantity * Wholesale_Price) DESC
LIMIT 5;

-- Query #10: What was the revenue generated by each product in 2023?
SELECT Product_Name AS 'Product Name', Price AS 'Price', Quantity_Sold AS 'Quantity Sold', (Price * Quantity_Sold) AS 'Revenue'
FROM PRODUCT, SALE
WHERE PRODUCT.Product_ID = SALE.Product_ID
AND SALES_DATE LIKE '%2023%'
ORDER BY Revenue DESC;

-- Query #11: Which products have stock levels below the reorder threshold?
SELECT P.Product_Name AS 'Product Name', I.Stock_Quantity 'Stock Quantity'
FROM PRODUCT P
JOIN INVENTORY I ON P.Product_ID = I.Product_ID
WHERE I.Stock_Quantity < 10;

-- Query #12: Which products generated more than $10,000 in revenue in 2024?
SELECT Product_Name AS 'Product Name', SUM(Quantity_Sold * Price) AS 'Total Revenue'
FROM PRODUCT, SALE
WHERE PRODUCT.Product_ID = SALE.Product_ID
AND SALES_DATE LIKE '%2024%'
GROUP BY Product_Name
ORDER BY SUM(Quantity_Sold * Price) DESC;

-- Query #13: What is the total quantity sold for each product?
SELECT P.Product_ID AS 'Product ID', P.Product_Name AS 'Product Name', SUM(S.Quantity_Sold) AS 'Total Quantity Sold'
FROM PRODUCT P
LEFT JOIN SALE S ON P.Product_ID = S.Product_ID
GROUP BY P.Product_ID, P.Product_Name;

-- Query #14: What is the revenue generated by products sold after January 1, 2023?
SELECT S.Sale_ID AS 'Sale ID', S.Sales_Date AS 'Sales Date', S.Quantity_Sold AS 'Quantity Sold', S.Revenue, P.Product_Name AS 'Product Name'
FROM SALE S
RIGHT JOIN PRODUCT P ON S.Product_ID = P.Product_ID
WHERE S.Sales_Date > '2023-01-01'
ORDER BY S.Revenue DESC;

-- Query #15: Which products generate the highest revenue?
SELECT P.Product_Name AS 'Product Name', SUM(S.Revenue) AS 'Total Revenue'
FROM SALE S
JOIN PRODUCT P ON S.Product_ID = P.Product_ID
GROUP BY P.Product_Name
ORDER BY SUM(S.Revenue) DESC;

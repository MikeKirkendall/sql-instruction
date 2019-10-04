Drop database if exists prs_db;
Create database prs_db;
Use prs_db;

Create table User (
ID					int				primary key auto_increment,
UserName			varchar(20)		not null,
PassWord			varchar(10)		not null,
FirstName			varchar(20)		not null,
LastName			varchar(20)		not null,
PhoneNumber			varchar(12)		not null,
Email				varchar(75)		not null,
IsReviewer			TinyInt(1)		not null,
IsAdmin				tinyint(1)		not null,
Constraint uname unique (Username)
);

Create Table Vendor (
ID					int				primary key auto_increment,
Code				varchar(10)		not null,
Name				varchar(255)	not null,
Address				varchar(255)	not null,
City				varchar(255)	not null,
State				varchar(2)		not null,
Zip					varchar(5)		not null,
PhoneNumber			varchar(12)		not null,
Email				varchar(100)	not null,
Constraint vcode unique (Code)
);

Create Table Request (
ID					int				primary key auto_increment,
UserID				int				not null,
Description			varchar(100)	not null,
Justification		varchar(255)	not null,
DateNeeded			date			not null,
DeliveryMode		varchar(25)		not null,
Status				varchar(20)		not null,
Total				decimal(10,2)	not null,
SubmittedDate		datetime		not null,
ReasonForRejection	varchar(100)		,
Foreign Key (UserID) references User(ID)
);

Create table Product (
ID					int				primary key auto_increment,
VendorID			int				not null,
PartNumber			varchar(50)		not null,
Name				varchar(50)		not null,
Price				decimal(10,2)	not null,
Unit				varchar(255)		,
PhotoPath			varchar(255)		,
Foreign Key (VendorID) references Vendor(ID),
Constraint vendor_part unique (VendorID, PartNumber)
);

Create Table LineItem (
ID					int				primary key auto_increment,
RequestID			int				not null,
ProductID			int				not null,
Quantity			int				not null,
Foreign Key (ProductID) references Product(ID),
Foreign Key (RequestID) references Request(ID),
Constraint req_pdt unique (RequestID, ProductID));

Insert into User (UserName, PassWord, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin)
values ('TSmith', '1212', 'Todd', 'Smith', '513-555-4444', 'TSmith@gmail.com', '0','0'),
	   ('JJohnson', '4545', 'Judy', 'Johnson', '513-788-8778', 'JJohnson@yahoo.com', '1', '1');
       
Insert into Vendor (Code, Name, Address, City, State, Zip, PhoneNumber, Email)
values ('STA-101', 'Staples', '9559 Mason Montgomery Road', 'Mason', 'OH', '45040', '513-754-0235', 'STA-101@staples.com');

Insert into Product (VendorID, PartNumber, Name, Price, Unit)
value (1, '338207', 'Staples Moving & Storage Packing Tape', 31.99, '12 rolls'),
	  (1, '207436', 'Staples One-Touch Plus Desktop Stapler', 17.79, '1 stapler');


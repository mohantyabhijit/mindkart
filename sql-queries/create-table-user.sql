CREATE TABLE [User] (
	UserId INT NOT NULL IDENTITY(1,1), 
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	UserEmail VARCHAR(30) NOT NULL,
	UserPhoneNo VARCHAR(20) NOT NULL,
	UserAddress VARCHAR(200) NOT NULL,
	UserState VARCHAR(20) NOT NULL,
	UserCity VARCHAR(50) NOT NULL,
	UserZip VARCHAR(10) NOT NULL,
	PRIMARY KEY(UserId),
	OrderId INT FOREIGN KEY REFERENCES 
	OrderDetail(OrderId)

);

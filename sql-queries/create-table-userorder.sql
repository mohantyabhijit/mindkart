CREATE TABLE UserOrderAddress (
	UserOrderId INT NOT NULL IDENTITY(1,1),
	PRIMARY KEY (UserOrderId),
	UserId INT FOREIGN KEY REFERENCES 
	[User](UserId),
	OrderId INT FOREIGN KEY REFERENCES
	OrderDetail(OrderId),
	AddressId INT FOREIGN KEY REFERENCES
	AddressDetail (AddressId)
);

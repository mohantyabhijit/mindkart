CREATE TABLE DeliveryDetail(
	DeliveryId INT NOT NULL IDENTITY(1,1),
	DeliveryFirstName VARCHAR(50) NOT NULL,
	DeliveryLastName VARCHAR(50) NOT NULL,
	DeliveryPhoneNo VARCHAR(20) NOT NULL,
	DeliveryAddress VARCHAR(200) NOT NULL,
	DeliveryState VARCHAR(20) NOT NULL,
	DeliveryCity VARCHAR(50) NOT NULL,
	DeliveryZip VARCHAR(10) NOT NULL,
	PRIMARY KEY(DeliveryId),
	OrderId INT FOREIGN KEY REFERENCES 
	OrderDetail (OrderId)
);
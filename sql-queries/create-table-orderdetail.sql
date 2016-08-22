CREATE TABLE OrderDetail (
	OrderId INT NOT NULL IDENTITY(1,1),
	OrderedQuantity SMALLINT NOT NULL,
	PRIMARY KEY(OrderId),
	ProductId INT FOREIGN KEY REFERENCES Product(ProductId)
);


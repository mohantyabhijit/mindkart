CREATE TABLE ProductQuantity (
	ProductQuantityId INT NOT NULL IDENTITY(1,1),
	ColourName VARCHAR(30) NOT NULL,
	ProductQuantity int NOT NULL,
	PRIMARY KEY(ProductQuantityId),
	ProductId INT FOREIGN KEY REFERENCES 
	Product(ProductId)
);


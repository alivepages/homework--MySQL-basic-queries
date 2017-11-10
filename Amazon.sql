# 1. Create a database called **Amazon**.

# CREATE database Amazon;

# 2. Create a `Products` table with `Barcode(8)`, `Description`, `Price` fields.

# USE Amazon;
# CREATE TABLE Products (
#  Id INT(11) NOT NULL AUTO_INCREMENT,
#  Barcode VARCHAR (8),
#  Description VARCHAR (255),
#  Price DECIMAL (15, 2),
#  PRIMARY KEY (Id)
# );

# 3. Create a `Stock` table, with `Id_Product`, `Quantity` fields.

# CREATE TABLE Stock (
#   Id INT(11) NOT NULL AUTO_INCREMENT,
#   Id_Product INT(11),
#   Quantity INT(3),
#   PRIMARY KEY (Id)
#  );

# 4. Add `Cookies` with barcode `07427452`, and with a cost of `$8.50`. We have `42` in stock.

# INSERT INTO Products (Barcode, Description, Price) VALUES ('07427452', 'Cookies', 8.50);
# INSERT INTO Stock (Id_Product, Quantity) VALUES (1, 42);

# 5. Add `Orange Juice` with barcode `12365438`, and with a cost of `$12.44`. We have `15` in stock.

# INSERT INTO Products (Barcode, Description, Price) VALUES ('12365438', 'Orange Juice', 12.44);
# INSERT INTO Stock (Id_Product, Quantity) VALUES (2, 15);

# 6. Add `Ice Cream` with barcode `98740932`, and with a cost of `$55.98`. We have `8` in stock.

# INSERT INTO Products (Barcode, Description, Price) VALUES ('98740932', 'Ice Cream', 55.98);
# INSERT INTO Stock (Id_Product, Quantity) VALUES (3, 8);

# 7. Add `Halls` with barcode `00870021`, and with a cost of `$5.21`. We have `10` in stock.

# INSERT INTO Products (Barcode, Description, Price) VALUES ('00870021', 'Halls', 5.21);
# INSERT INTO Stock (Id_Product, Quantity) VALUES (4, 10);

# 8. Add `Coke` with barcode `53791253`, and with a cost of `$12.34`. We have `9` in stock.

# INSERT INTO Products (Barcode, Description, Price) VALUES ('53791253', 'Coke', 12.34);
# INSERT INTO Stock (Id_Product, Quantity) VALUES (5, 9);

# 9. Show me the products with more than `10` units in stock.

# SELECT * FROM Products JOIN Stock ON Stock.Id_Product = Products.Id WHERE Stock.Quantity > 10;

# 10. Add `15` units more to `Ice Cream`.

# UPDATE Stock JOIN Products
# ON Stock.Id_Product = Products.Id
# SET Stock.Quantity = Stock.Quantity + 15
# WHERE Products.Description = 'Ice Cream';

# 11. Show me the products with less than `10` units in stock.

# SELECT * FROM Products JOIN Stock ON Stock.Id_Product = Products.Id WHERE Stock.Quantity < 10;

# 12. Delete `Orange Juice` from our store.

# DELETE FROM Products WHERE Description = 'Orange Juice';

# 13. Show me the products ordered by `Description`.

# SELECT * FROM Products ORDER BY Description;

# 14. Show me the products ordered by `price`, from `highest`.

# SELECT * FROM Products ORDER BY price DESC;

# 15. What are the products between `$5.00` and `$10.00`.

# SELECT * FROM Products WHERE price BETWEEN 5 AND 10;

# 16. What are the products between `$5.00` and `$10.00`, ordered by `highest`.

# SELECT * FROM Products WHERE price BETWEEN 5 AND 10 ORDER BY price DESC;

# 17. How much products do we have?

# SELECT count(*) AS Count FROM Products;

# 18. How much stock do we have?

# SELECT sum(Quantity) AS Total FROM Stock;

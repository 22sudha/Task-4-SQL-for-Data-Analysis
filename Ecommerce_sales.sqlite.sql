-- TABLE
CREATE TABLE 'data' ('c1' TEXT,'c2' TEXT,'c3' TEXT,'c4' TEXT,'c5' TEXT,'c6' TEXT,'c7' TEXT,'c8' TEXT);
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
 
-- INDEX
CREATE INDEX idx_customer ON data(c7);
CREATE INDEX idx_product ON data(c3);
 
-- TRIGGER
 
-- VIEW
CREATE VIEW HighValueOrders AS
SELECT c3 AS Product, c4 AS Quantity, c6 AS UnitPrice,
       (c4 * c6) AS TotalValue
FROM data
WHERE (c4 * c6) > 500;
 
-- LINK
 

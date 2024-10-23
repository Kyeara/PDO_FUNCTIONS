DROP TABLE Customers;
DROP TABLE Shippings;
DROP TABLE Orders;



create Table Customer (
  CustomerID INT PRIMARY KEY,
  Customer_Name varchar(50) NOT NULL,
  Age INT,
  Account_Number INT 
);

create Table Computer  (
  ComputerID INT PRIMARY KEY,
  Computer_Number INT,
  Computer_Status varchar(50) NOT NULL
);

create Table Reservation_Ticket(
  ReservationID INT PRIMARY KEY,
  CustomerID INT NOT NULL,
  ComputerID INT NOT NULL,
  PaymentID INT NOT NULL

);

create Table Payment (
  PaymentID INT PRIMARY KEY,
  CustomerID INT NOT NULL,
  ComputerID INT NOT NULL,
  Amount_Paid INT NOT NULL,
  Hours_Usage INT
);

create Table Comment(
  CommentID INT PRIMARY KEY,
  CustomerID INT NOT NULL,
  Customer_Feedback varchar(50) NOT NULL,
  Rating INT

);

insert into Payment (PaymentID, CustomerID, ComputerID, Amount_Paid, Hours_Usage) values 
(1, 8, 13, 20.00, 1),
(2, 2, 1, 60.00, 3),
(3, 14, 4, 40.00, 2),
(4, 9, 7, 100.00, 5),
(5, 1, 14, 80.00, 4),
(6, 15, 15, 20.00, 1),
(7, 1, 4, 100.00, 5),
(8, 14, 9, 60.00, 3),
(9, 13, 13, 80.00, 4),
(10, 10, 9, 60.00, 3),
(11, 2, 5, 20.00, 1),
(13, 4, 15, 80.00, 4),
(14, 3, 11, 40.00, 2),
(15, 7, 4, 100.00, 5);



insert into Comment (CommentID, CustomerID, Customer_Feedback, Rating) values 
(1, 13, 'Excellent', 10),
(2, 8, 'Average', 1),
(3, 1, 'Excellent', 0),
(4, 7, 'Average', 6),
(5, 15, 'Average', 9),
(6, 13, 'Poor', 2),
(7, 8, 'Poor', 9),
(8, 2, 'Excellent', 9),
(9, 8, 'Good', 9),
(10, 3, 'Poor', 2),
(11, 7, 'Average', 4),
(12, 1, 'Average', 1),
(13, 14, 'Good', 7),
(14, 5, 'Good', 10),
(15, 13, 'Average', 6);


insert into Reservation_Ticket (ReservationID, CustomerID, ComputerID, PaymentID) values 
(1, 8, 13, 2),
(2, 12, 13, 15),
(3, 4, 11, 2),
(4, 12, 10, 12),
(5, 14, 12, 11),
(6, 13, 1, 14),
(7, 4, 10, 2),
(8, 4, 6, 11),
(9, 7, 10, 1),
(10, 1, 7, 9),
(11, 15, 3, 14),
(12, 8, 5, 3),
(13, 8, 8, 4),
(14, 6, 11, 10),
(15, 5, 13, 7);


insert into Computer (ComputerID, Computer_Number, Computer_Status) values 
(1, 98, 'not yet finished'),
(2, 43, 'finished'),
(3, 22, 'not yet finished'),
(4, 6, 'not yet finished'),
(5, 51, 'not yet finished'),
(6, 38, 'not yet finished'),
(7, 78, 'not yet finished'),
(8, 38, 'finished'),
(9, 35, 'not yet finished'),
(10, 52, 'not yet finished'),
(11, 26, 'finished'),
(12, 51, 'not yet finished'),
(13, 71, 'not yet finished'),
(14, 24, 'not yet finished'),
(15, 97, 'not yet finished');


insert into Customer (CustomerID, Customer_Name, Age, Account_Number) values 
(1, 'Beitris Leinthall', 24, 64),
(2, 'Sheffie Foulis', 11, 76),
(3, 'Gert Lea', 13, 17),
(4, 'Paxton McPeck', 19, 32),
(5, 'Gerry Burkert', 18, 43),
(6, 'Viola Marsh', 23, 22),
(7, 'Carena Kleynermans', 18, 4),
(8, 'Ibrahim Goodfellow', 18, 6),
(9, 'Forest Bussons', 12, 21),
(10, 'Bron Boles', 15, 66),
(11, 'Stafani Charte', 21, 56),
(12, 'Charlene Collingridge', 25, 13),
(13, 'Zachary Borland', 18, 27),
(14, 'Andreana Iacobetto', 17, 18),
(15, 'Mahalia Beeckx', 16, 88);
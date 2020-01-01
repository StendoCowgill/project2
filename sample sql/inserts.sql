use veronicas

INSERT INTO customers 
(customerNumber, FirstName, LastName, Phone, email, Address, City, State, Zip, Birthdate)
VALUES ('39600', 'Mary', 'Maldonado', '563-259-4068' , 'MaryDMaldonado@missiongossip.com', '3642 Pin Oak Drive', 'Clinton', 'IA', '52732', '04/14/1981')

--------------------------------------------------------------------------------
use veronicas

select * from customers 
where email = 'MaryDMaldonado@missiongossip.com'
--------------------------------------------------------------------------------
use veronicas

insert into Flowers
(FlowerID, CommonName, DominateColor, SalesPrice)
Values ('700', 'Holland Bulbs', 'Ask Veronica', 12.75)


select * from Flowers where FlowerID='700'

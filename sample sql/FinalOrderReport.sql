use veronicas

select Customers.FirstName, Customers.LastName, Customers.Address, Customers.City, Customers.State, Customers.Zip
from Customers, Orders
where Orders.OrderNumber = '1'
and Orders.CustomerNumber = Customers.CustomerNumber

select flowers.CommonName, OrderDetails.Quantity, Flowers.SalesPrice, OrderDetails.Quantity * Flowers.SalesPrice 'Sub Total'
from OrderDetails, flowers
where OrderDetails.FlowerID = Flowers.FlowerID
and OrderDetails.OrderNumber = '1'

select sum(Flowers.SalesPrice * OrderDetails.Quantity) as 'Total'
from OrderDetails, flowers
where OrderDetails.FlowerID = Flowers.FlowerID
and orderdetails.OrderNumber = '1'
group by OrderDetails.OrderNumber
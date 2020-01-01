
select NewOrders.OrderNumber, Customers.FirstName, Customers.LastName,  Customers.Address, Customers.City, Customers.State, Customers.Zip, Customers.Phone, NewOrders.CommonName, NewOrders.Quantity, NewOrders.SalesPrice
from customers,
	(select Orders.OrderNumber,  Orders.CustomerNumber, OD.CommonName, OD.Quantity, OD.SalesPrice
	from orders,
		(select OrderDetails.OrderNumber, flowers.CommonName, OrderDetails.Quantity, Flowers.SalesPrice
		from OrderDetails, flowers
		where OrderDetails.FlowerID = Flowers.FlowerID ) as OD
	where orders.ordernumber = OD.OrderNumber
	and Orders.OrderDate= '6/26/2008') as NewOrders
where NewOrders.CustomerNumber = Customers.CustomerNumber
order by OrderNumber
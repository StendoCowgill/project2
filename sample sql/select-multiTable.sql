select flowers.CommonName, OrderDetails.Quantity, Flowers.SalesPrice
from OrderDetails, flowers
where OrderDetails.FlowerID = Flowers.FlowerID
and OrderDetails.OrderNumber = '1'

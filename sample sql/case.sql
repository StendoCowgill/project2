select Customers.zip 'Zip Code', FlowerResults.CommonName 'Flower Name', 
	case
	when FlowerResults.Performance = '1' then
	 'Star performer'
	when FlowerResults.Performance = '2' then
	 'Good performer'
	else
	 'Inconsistant in your climate'
	end
	'Results' 
	
from Customers,
(Select Flowers.CommonName, ClientFlowerMatch.Performance, ClientFlowerMatch.zip 
from ClientFlowerMatch, Flowers
where ClientFlowerMatch.FlowerID = Flowers.FlowerID) as FlowerResults

where FlowerResults.Zip = Customers.Zip and
Customers.CustomerNumber = '10'
order by FlowerResults.Performance, FlowerResults.CommonName

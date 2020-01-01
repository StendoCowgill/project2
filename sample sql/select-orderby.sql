select customernumber, FirstName, LastName, Phone, Address, City, State, Zip, Email, Birthdate
from Customers 
where State = 'IL'
Order by city, LastName

SELECT Person.FirstName, Person.Lastname, Address.City ,Address.State FROM Person LEFT JOIN Address
ON Person.PersonId = Address.PersonId
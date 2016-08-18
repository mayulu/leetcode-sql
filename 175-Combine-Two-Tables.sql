## 1. Left Join

select FirstName, LastName, City, State
from Person p left join Address a
on p.PersonId = a.PersonId


## 2. Traditional method
select FirstName, LastName, City, State
from Person p, Address a
where p.PersonId = a.PersonId 
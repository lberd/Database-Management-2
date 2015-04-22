/* 
    195
	CustomersAndProducts - Modifications, Filters and Functions
	L Wood
 */

#1a
select fname, lname
from customerContacts;

#1b
select fname, lname
from customerContacts
where fname like 'A%' or 'B%';

#1c
select fname, lname
from customerContacts
where fname like '%a%' and lname like 'L5';

#1d
select fname, lname
from customerContacts
where substring(fname,1,1) >= 'D' and substring(fname,1,1) > 'N';

#1e
select fname, lname
from customerContacts
where binary fname like '%A%';

#2
select email
from customerContacts
where email not like '%.com';

#3
select orderId, quantity, if(quantity < 5, 1.00,if(quantity < 10, 2.00, 3.00)) as 'shipping cost'
from orderLines; 

#4
select email
from customerContacts
where email like 'hawk%';

#5
select fname, lname
from customerContacts
where lname like 'T%' and lname <= char_length(7);

#6
select concat(upper(substring(lname,1,1)),lower(substring(lname,2,length(lname)-2)),upper(substring(lname,length(lname),length(lname))))
from customerContacts;

#7a
select date_format(now(), '%W, %M %d, %Y');

#7b
select date_format(now(),'%M %D, %Y');

#7c
select date_format(now(), '%W %h:%i %p');

#8a
select date_format(now() + interval 1 month, '%m/%d/%y');

#8b
select date_format(now() + interval 70 day, '%m/%d/%y');

#8c
select date_format(now() + interval 40 day, '%m/%d/%y');

#8d
select date_format(now() - interval 40 day, '%m/%d/%y');

#9a
select date_format(now() + interval 100 hour, '%h:%i %p');

#9b
select date_format(now() - interval 100 hour, '%h:%i %p');

#10
select customerId, count(customerContacts.customerId)
from customerContacts
group by customerId;

#11
select orderDate, count(orderDate)
from orders
group by orderDate;

#12
select customerId, min(orderDate)
from orders
group by customerId, month(orderDate);

#13
select orderDate, count(orderDate) as orderSize
from orders
group by orderDate
having orderSize > 1;
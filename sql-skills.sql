-- Artist Table Q1:

select * from artist
order by artist_id;


insert into artist (name, artist_id)
values ('Jack Johnson', 276);

insert into artist (name, artist_id)
values ('James Taylor', 277);

insert into artist (name, artist_id)
values ('John Legend', 278);

-- Artist Table Q2:
select * from artist
order by name limit 5;

-- Employee Table Q1:
select first_name, last_name from employee
where city = 'Calgary';
-- 
-- Employee Table Q2:
select employee_id from employee
where first_name ='Nancy' and last_name = 'Edwards';

select * from employee
where reports_to = 2;

-- Employee Table Q3:

select count(city) from employee
where city = 'Lethbridge';

-- Invoice Table Q1:
select sum(total) from invoice;


select * from invoice;

-- Invoice Table Q2:
select * from invoice
order by total desc;

-- Invoice Table Q3:
select * from invoice
order by total;

-- Invoice Table Q4:
select * from invoice_line
where unit_price > 5;

-- Invoice Table Q5:
select * from invoice_line
where unit_price < 5;

-- Invoice Table Q6:
 select sum(total) from invoice;

-- Join Queries Q1:
select * from invoice
join invoice_line on invoice.invoice_id = invoice_line.invoice_id
where unit_price > 0.99;

-- Join Queries Q2:
select invoice_date, customer.first_name, customer.last_name
from invoice
join customer on invoice.customer_id = customer.customer_id;

 -- Join Queries Q3:
 select customer.first_name Customer_First_Name, customer.last_name Customer_Last_Name, 
 employee.first_name Support_Rep_First_Name, employee.last_name support_rep_last_name
 from employee
 join customer on employee.employee_id = customer.support_rep_id;

-- Join Queries Q4:
select album.title album_title, artist.name artist_name
from album
join artist on album.artist_id = artist.artist_id;





 
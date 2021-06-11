-- Artist Table 

insert into artist (name)
values ('Lorde'),('Taylor Swift'),('Harry Styles');

select * from artist
order by name asc
limit 5;

-- Employee Table 

select first_name, last_name from employee
where city like 'Calgary';

select * from employee
where reports_to = 2;

select count(*) from employee
where city like 'Lethbridge';

-- Invoice Table

select count(*) from invoice
where billing_country = 'USA';

select total from invoice 
order by total desc
limit 1;

select total from invoice
order by total asc
limit 1;

select * from invoice
where total > 5;

select count(*) from invoice
where total < 5;

select sum(total) from invoice;

-- Join Queries

select * from invoice i
join invoice_line il on i.invoice_id = il.invoice_id
where unit_price > 0.99;

select invoice_date, c.first_name, c.last_name, total from invoice i
join customer c on i.customer_id = c.customer_id;

select c.first_name as "Customer First Name", c.last_name as "Customer Last Name", e.first_name as "Support Rep first", e.last_name as "Supprt Rep last"
from customer c
join employee e on c.support_rep_id = e.employee_id;

select al.title, ar.name from album al
join artist ar on al.artist_id = ar.artist_id;
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

-- Extra Credit

-- Artist Table 

select * from artist
order by name desc
limit 10;

select * from artist
where name like 'Black%';

select * from artist
where name like '%Black%';

-- Employee Table

select birth_date from employee
order by birth_date desc
limit 1;

select birth_date from employee
order by birth_date asc
limit 1;

-- Invoice Table

select count(*) from invoice 
where billing_state in ('CA', 'TX', 'AZ');

select avg(total) from invoice;

-- Join Queries

select track_id from playlist_track pt
join playlist p on pt.playlist_id = p.playlist_id
where p.name = 'Music';

select t.name from track t
join playlist_track pt on t.track_id = pt.track_id
where pt.playlist_id = 5;

select t.name, p.name from track t
join playlist_track pt on t.track_id = pt.track_id
join playlist p on p.playlist_id = pt.playlist_id;

select t.name, a.title from track t
join genre g on t.genre_id = g.genre_id
join album a on a.album_id = t.album_id
where g.name = 'Alternative & Punk';
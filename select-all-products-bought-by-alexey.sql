set search_path to netology;

select "product_name"
from orders o
left join customers c on o.customer_id = c.id
where name ilike 'alexey';

with customer_cte as (
    select * from customers where id=1
)
select * from customer_cte
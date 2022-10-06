
with customer_cte as (
    select * from {{source('our_source','customers')}} 
)
select * from customer_cte
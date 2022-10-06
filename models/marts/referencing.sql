-- with referencing as (
--     select * from {{ref('customer_cte')}} c
--     join {{ref('orders_cte')}} o
--     on c.order_id=o.order_id
-- )
-- select * from referencing
with customers as (
    select * from {{ref('customer_cte')}}
),
orders as (
    select * from {{ref('orders_cte')}}
)
select c.first_name,c.last_name,c.email,c.date_of_birth,c.current_job,o.order_name,o.order_qty,o.order_price
from customers c join orders o on o.order_id=c.order_id
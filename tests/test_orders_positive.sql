with payments as (
    select * from {{ref('orders_cte')}}
)
select * from payments where order_price<0
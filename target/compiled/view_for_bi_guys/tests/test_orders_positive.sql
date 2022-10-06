with payments as (
    select * from "postgres"."public"."orders_cte"
)
select * from payments where order_price<0
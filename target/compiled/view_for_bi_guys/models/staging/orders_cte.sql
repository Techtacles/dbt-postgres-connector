with orders as (
    select * from "postgres"."staging"."orders" 
)
select * from orders
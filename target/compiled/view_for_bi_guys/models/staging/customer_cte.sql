with customer_cte as (
    select * from "postgres"."staging"."customers" 
)
select * from customer_cte
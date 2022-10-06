
  create view "postgres"."public"."customer_cte__dbt_tmp" as (
    with customer_cte as (
    select * from "postgres"."staging"."customers" 
)
select * from customer_cte
  );

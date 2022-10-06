

  create  table "postgres"."public"."first_customer_cte__dbt_tmp"
  as (
    
with customer_cte as (
    select * from customers where id=1
)
select * from customer_cte
  );
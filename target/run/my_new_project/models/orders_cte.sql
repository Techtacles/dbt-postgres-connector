
  create view "postgres"."public"."orders_cte__dbt_tmp" as (
    with orders as (
    select * from orders
)
select * from orders
  );

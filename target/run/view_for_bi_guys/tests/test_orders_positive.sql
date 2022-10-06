select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with payments as (
    select * from "postgres"."public"."orders_cte"
)
select * from payments where order_price<0
      
    ) dbt_internal_test
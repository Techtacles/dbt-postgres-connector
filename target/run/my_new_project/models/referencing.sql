
  create view "postgres"."public"."referencing__dbt_tmp" as (
    -- with referencing as (
--     select * from "postgres"."public"."customer_cte" c
--     join "postgres"."public"."orders_cte" o
--     on c.order_id=o.order_id
-- )
-- select * from referencing
with customers as (
    select * from "postgres"."public"."customer_cte"
),
orders as (
    select * from "postgres"."public"."orders_cte"
)
select c.first_name,c.last_name,c.email,c.date_of_birth,c.current_job,o.order_name,o.order_qty,o.order_price
from customers c join orders o on o.order_id=c.order_id
  );


    
    

with all_values as (

    select
        order_name as value_field,
        count(*) as n_records

    from "postgres"."public"."orders_cte"
    group by order_name

)

select *
from all_values
where value_field not in (
    'Rice','Beans','Spag','Pizza','Shawarma'
)



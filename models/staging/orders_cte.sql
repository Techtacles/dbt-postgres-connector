with orders as (
    select * from {{source('our_source','orders')}} 
)
select * from orders
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from "postgres"."public"."customer_cte"
where id is null



      
    ) dbt_internal_test

    
    

select
    id as unique_field,
    count(*) as n_records

from "postgres"."public"."customer_cte"
where id is not null
group by id
having count(*) > 1



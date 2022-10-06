
  create view "postgres"."public"."sec_cus__dbt_tmp" as (
    create view sec_cus as select * from customers where id=2
  );

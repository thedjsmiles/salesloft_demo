select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from `salesloft-337304`.`stack_overflow`.`questions_vw`
where id is null



      
    ) dbt_internal_test
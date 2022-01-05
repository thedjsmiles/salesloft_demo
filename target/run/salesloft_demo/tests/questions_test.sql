select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      -- identifying instances where there is no rank

SELECT ID
FROM `salesloft-337304`.`stack_overflow`.`questions`
WHERE
  POP_RNK IS NULL
  OR TREND_RNK IS NULL
GROUP BY 1
      
    ) dbt_internal_test
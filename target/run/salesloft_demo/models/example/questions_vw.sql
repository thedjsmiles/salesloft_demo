

  create or replace view `salesloft-337304`.`stack_overflow`.`questions_vw`
  OPTIONS()
  as -- Use the `ref` function to select from other models

SELECT *
FROM `salesloft-337304`.`stack_overflow`.`questions`;


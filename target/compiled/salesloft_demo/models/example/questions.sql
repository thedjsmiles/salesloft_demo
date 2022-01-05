

WITH QUESTIONS AS (
  SELECT
     B.ID
    ,B.TITLE
    ,B.BODY
    ,B.CREATION_DATE
    ,B.TAGS
    ,B.VIEW_COUNT
    ,B.SCORE
    ,B.OWNER_USER_ID
    ,A.DISPLAY_NAME
    ,A.AGE
    ,A.REPUTATION
    ,A.LOCATION
    ,DENSE_RANK() OVER(ORDER BY B.VIEW_COUNT DESC) AS POP_RNK
    ,DENSE_RANK() OVER(ORDER BY B.SCORE DESC) AS TREND_RNK
  FROM `bigquery-public-data`.`stackoverflow`.`users` AS A
  LEFT JOIN `bigquery-public-data`.`stackoverflow`.`posts_questions` AS B
    ON A.ID = B.OWNER_USER_ID
  WHERE
    B.ANSWER_COUNT = 0
    AND B.OWNER_USER_ID IS NOT NULL
)
SELECT *
FROM QUESTIONS
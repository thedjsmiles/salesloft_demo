-- identifying instances where there is no rank

SELECT ID
FROM {{ ref('questions') }}
WHERE
  POP_RNK IS NULL
  OR TREND_RNK IS NULL
GROUP BY 1

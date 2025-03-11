WITH top_3_customers AS (
 SELECT 
    customer_id,
    first_name,
    last_name,
    ROUND(total_spending, 2) AS total_spending,
    RANK() OVER (ORDER BY total_spending DESC) AS spending_rank
 FROM {{ ref('int_localbike__customer_spending') }}
    )

SELECT * FROM top_3_customers
ORDER BY spending_rank
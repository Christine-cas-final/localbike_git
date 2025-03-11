WITH top_3_customers AS (
    SELECT 
        customer_id,
        first_name,
        last_name,
        total_revenue,
        RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
    FROM {{ ref('int_localbike__customer_spending') }}
)

SELECT * FROM top_3_customers

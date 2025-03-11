WITH customer_spending AS (
    SELECT 
        customer_id,
        first_name,
        last_name,
        city,
        COUNT(DISTINCT order_id) AS total_orders,
        SUM(order_total_discounted) AS total_revenue
    FROM {{ ref('int_localbike__customer_orders') }}
    GROUP BY customer_id, first_name, last_name, city
)

SELECT * FROM customer_spending
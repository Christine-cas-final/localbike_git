WITH average_order_value AS (
    SELECT 
    ROUND(SUM(total_spending) / NULLIF(SUM(total_orders), 0), 2) AS global_average_order_value
    FROM {{ ref('int_localbike__customer_spending') }}
)

SELECT * FROM average_order_value

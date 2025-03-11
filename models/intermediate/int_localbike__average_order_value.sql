WITH average_order_value AS (
    SELECT 
        SUM(total_revenue) / NULLIF(SUM(total_orders), 0) AS global_average_order_value
    FROM {{ ref('int_localbike__customer_spending') }}
)

SELECT * FROM average_order_value

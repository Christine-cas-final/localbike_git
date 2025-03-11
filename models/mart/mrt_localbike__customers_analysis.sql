SELECT
    cs.customer_id,
    cs.first_name,
    cs.last_name,
    cs.city,
    cs.total_orders,
    cs.total_spending,
    aov.global_average_order_value,
    CASE 
        WHEN t3.spending_rank <= 3 THEN 'Top 3'
        ELSE 'Other'
    END AS top_3_flag
FROM {{ ref('int_localbike__customer_spending') }} cs
LEFT JOIN {{ ref('int_localbike__average_order_value') }} aov ON TRUE
LEFT JOIN {{ ref('int_localbike__top_3_customers') }} t3 ON cs.customer_id = t3.customer_id
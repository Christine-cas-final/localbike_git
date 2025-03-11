WITH customer_orders AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        c.city,
        o.order_id,
        SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS order_total_discounted
    FROM {{ ref('stg_localbike__customers') }} c
    JOIN {{ ref('stg_localbike__orders') }} o ON c.customer_id = o.customer_id
    JOIN {{ ref('stg_localbike__order_items') }} oi ON o.order_id = oi.order_id
    GROUP BY c.customer_id, c.first_name, c.last_name, c.city, o.order_id
)

SELECT * FROM customer_orders
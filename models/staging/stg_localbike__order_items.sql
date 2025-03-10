SELECT 
concat(order_id, '_', item_id) as order_item_id,	
order_id,
item_id,	
product_id,	
quantity,	
list_price,	
discount,
(list_price * quantity) * (1-discount) as discounted_quantity_price  	
FROM {{source('dbt_cas_final_localbike', 'order_items')}} 
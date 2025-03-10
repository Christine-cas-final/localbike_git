SELECT 
order_id,	
customer_id,	
order_status,	
order_date,		
required_date,	
shipped_date,  	
store_id,	
staff_id,	
FROM {{source('dbt_cas_final_localbike', 'orders')}} 
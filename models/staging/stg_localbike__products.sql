SELECT 
product_id,
product_name,
REGEXP_REPLACE(product_name, "[']", "") AS product_name_cleaned,	
brand_id,
category_id,		
model_year,	
list_price,
FROM {{source("dbt_cas_final_localbike", 'products')}}
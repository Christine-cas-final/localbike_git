SELECT
 concat(store_id, '_', product_id) as stock_id,	
 store_id,
 product_id,
 coalesce(quantity, 0) AS quantity_stocks
FROM {{ source('dbt_cas_final_localbike', 'stocks') }}
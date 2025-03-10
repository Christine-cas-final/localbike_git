SELECT 
store_id,	
store_name,	
phone,	
email,	
trim(upper(street)) as street,	
trim(upper(city)) as city,	
state,	
cast(zip_code as string) as zip_code
FROM {{source('dbt_cas_final_localbike','stores')}}
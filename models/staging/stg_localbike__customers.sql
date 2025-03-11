SELECT 
customer_id,		
first_name,	
last_name,		
phone,		
email,		
trim(upper(street)) as street,		
trim (upper(city)) as city,		
state,		
cast(zip_code as string) as zip_code
from {{source('dbt_cas_final_localbike','customers')}}	
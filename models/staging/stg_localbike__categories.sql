select
category_id,
category_name
from {{source('dbt_cas_final_localbike', 'categories')}}	
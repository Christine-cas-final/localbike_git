select
cast(brand_id as string) as brand_id,
trim(lower(brand_name)) AS brand_name
from {{source('dbt_cas_final_localbike', 'brands')}}	
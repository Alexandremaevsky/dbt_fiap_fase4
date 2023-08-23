with calc_listings as (
select 
* 
from {{source('sources','listings')}}
)
select * from calc_listings
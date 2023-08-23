with calc_neighbourhoods as (
select * 
from {{source('sources','neighbourhoods')}}
)
select * from calc_neighbourhoods
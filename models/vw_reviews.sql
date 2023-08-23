with calc_reviews as (
select * 
from {{source('sources','reviews')}}
)
select * from calc_reviews
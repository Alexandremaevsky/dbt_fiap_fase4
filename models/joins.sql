with calc_table_final as (
select
*
from {{source('sources','calendar')}} cal
left join {{source('sources','listings')}} lis on (cal.listing_id =lis.id)
left join {{source('sources','neighbourhoods')}} nei on (nei.neighbourhood_group = lis.neighbourhood_group)
left join {{source('sources','reviews')}} rev on (rev.listing_id = lis.id)
)
select * from calc_table_final
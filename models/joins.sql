with calc_table_final as (
select
*
from {{source('sources','calendar')}} "calendar"
left join {{source('sources','listings')}} "listings" on ("calendar".listing_id = "listings".id)
left join {{source('sources','neighbourhoods')}} "neighbourhoods" on ("neighbourhoods".neighbourhood_group = "listings".neighbourhood_group)
left join {{source('sources','reviews')}} "reviews" on ("reviews".listing_id = "listings".id)
)
select * from calc_table_final
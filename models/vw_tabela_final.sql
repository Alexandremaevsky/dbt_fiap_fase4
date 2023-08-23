with calc_table_final as (
select
lis.id as listing_id,
rev.date,
lis.name,
lis.host_id,
lis.host_name,
lis.neighbourhood_group,
lis.neighbourhood,
lis.latitude,
lis.longitude,
lis.room_type,
lis.price,
lis.minimum_nights as minimum_nights_list,
lis.number_of_reviews,
lis.last_review,
lis.reviews_per_month,
lis.calculated_host_listings_count,
lis.availability_365,
lis.number_of_reviews_ltm,
lis.license,
cal.date as date_calendar,
cal.available,
cal.price as price_calendar,
cal.adjusted_price,
cal.minimum_nights as minimum_nights_calendar,
cal.maximum_nights as maximum_nights_calendar
from {{source('sources','calendar')}} cal
left join {{source('sources','listings')}} lis on (cal.listing_id =lis.id)
left join {{source('sources','neighbourhoods')}} nei on (nei.neighbourhood_group = lis.neighbourhood_group)
left join {{source('sources','reviews')}} rev on (rev.listing_id = lis.id)
)
select * from calc_table_final
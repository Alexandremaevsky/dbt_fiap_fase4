with calc_calendar as (
    select 
        * 
    from {{source('sources','calendar')}}
)
select * from calc_calendar
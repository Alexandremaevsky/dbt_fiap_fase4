with vw_calendar as (
    select 
        * 
    from {{source('sources','calendar')}}
)
select * from vw_calendar

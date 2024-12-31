{{config(
    materialized='view',
    unique_key=['id', 'page_url'],
)}}

with source as(
    select
    *
    from public.src_cars_info
)
select
    id as id,
    url as car_page_url,
    data as car_data
from source
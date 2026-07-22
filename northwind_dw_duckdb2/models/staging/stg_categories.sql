with source as (
    select *
    from {{ source('northwind', 'categories') }}
)

select
    category_id,
    category_name,
    description
from source

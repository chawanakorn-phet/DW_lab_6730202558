with source as (
    select *
    from {{ source('northwind', 'order_details') }}
)

select
    order_id,
    product_id,
    unit_price,
    quantity,
    discount
from source

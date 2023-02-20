with source as (

select * from {{ ref('fact_orders')}}
),


price_higher_0 as (

select
    ORDER_NUMBER,
    ORDER_LINE_NUMBER,
    PRICE_EACH

from source

where PRICE_EACH < 1

)

select * from price_higher_0
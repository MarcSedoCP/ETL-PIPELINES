select

    row_number() over (order by customer_name) as customer_id,
    customer_name,
    phone,
    address_line,
    postal_code,
    contact_name

from {{ ref("stg_orders") }}

group by customer_name, phone, address_line, postal_code, contact_name
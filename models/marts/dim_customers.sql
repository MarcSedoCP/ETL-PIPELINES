SELECT 
    seq_cust.nextval as customer_wid,
    A.CUSTOMER_NAME,
    A.phone,
    A.address_line,
    A.postal_code,
    A.contact_name,
    current_timestamp() as CREATED_DATE
   FROM 
(select


    customer_name AS CUSTOMER_NAME,
    phone,
    address_line,
    postal_code,
    contact_name

from {{ref('stg_orders')}}

group by customer_name, phone, address_line, postal_code, contact_name) A
select 

    Product_Code,
    Product_Line,
    MSRP

from {{ref('stg_orders')}}

group by Product_Code, Product_Line, MSRP


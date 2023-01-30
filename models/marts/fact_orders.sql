select

    Order_Number,
    Order_Line_Number,
    prod.Product_Code,
    Customer_Name,
    Quantity_Ordered,
    Price_Each,
    Sales,
    Order_Date,
    Status,
    Deal_Size

from {{ref('stg_orders')}} ord

left join dim_products prod on ord.Product_Code = prod.Product_Code;


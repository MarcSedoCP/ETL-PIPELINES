select

    Order_Number,
    Product_Code,
    Customer_Name,
    Quantity_Ordered,
    Price_Each,
    Order_Line_Number,
    Sales,
    Order_Date,
    Status,
    Deal_Size

from {{ref('stg_orders')}}

left join dim_products using (Product_Code)
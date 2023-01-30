select

    Order_Number,
    Order_Line_Number,
    Product_Code,
    Customer_Name,
    Quantity_Ordered,
    Price_Each,
    Sales,
    Order_Date,
    Status,
    Deal_Size

from {{ref('stg_orders')}} ord


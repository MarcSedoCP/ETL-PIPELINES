select

    Order_Number,
    Order_Line_Number,
    prod.Product_Code,
    cust.customer_wid,
    geo.City_ID,
    Quantity_Ordered,
    Price_Each,
    Sales,
    Order_Date,
    Status,
    Deal_Size

from {{ref('stg_orders')}} ord

left join dim_products prod on ord.Product_Code = prod.Product_Code
left join dim_customers cust on ord.Customer_Name = cust.Customer_Name
left join dim_geography geo on ord.City = geo.City and ord.Country = geo.Country
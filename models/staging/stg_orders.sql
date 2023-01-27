select 

    ordernumber as Order_Number,
    quantityordered as Quantity_Ordered,
    priceeach as Price_Each,
    orderlinenumber as Order_Line_Number,
    sales as Sales,
    orderdate as Order_Date,
    status as Status,
    productline as Product_Line,
    msrp as MSRP,
    productcode as Product_Code,
    customername as Customer_Name,
    phone as Phone, 
    addressline1 as Address_Line,
    city as City,
    state as State,
    postalcode as Postal_Code,
    country as Country,
    territory as Territory,
    concat(contactfirstname,' ',contactlastname) as Contact_Name,
    dealsize as Deal_Size

from {{ref('orders_seed')}}

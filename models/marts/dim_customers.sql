select

    ROW_NUMBER() OVER(ORDER BY Customer_Name) AS Customer_ID,
    Customer_Name,
    Phone,
    Address_Line,
    Postal_Code,
    Contact_Name

from {{ref('stg_orders')}}

group by Customer_Name, Phone, Address_Line, Postal_Code, Contact_Name
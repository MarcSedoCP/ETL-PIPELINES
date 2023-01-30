select

    Customer_Name,
    Phone,
    Address_Line,
    Postal_Code,
    Contact_Name

from {{ref('stg_orders')}}

group by Customer_Name, Phone, Address_Line, Postal_Code, Contact_Name
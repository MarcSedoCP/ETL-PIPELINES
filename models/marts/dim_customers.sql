select

    row_number() over (order by Customer_Name) as Customer_ID,
    Customer_Name,
    Phone,
    Address_Line,
    City,
    State,
    Postal_Code,
    Country,
    Territory,
    Contact_Name

from {{ref('stg_orders')}}

group by Customer_Name, Phone, Address_Line, City, State, Postal_Code, Country, Territory, Contact_Name
select 

    ordernumber as ORDER_NUMBER,
    quantityordered as QUANTITY_ORDERED,
    priceeach as PRICE_EACH,
    orderlinenumber as ORDER_LINE_NUMBER,
    sales as SALES,
    orderdate as ORDER_DATE,
    SUBSTR(orderdate, 1, LENGTH(orderdate) - 5) as DATE_COLUMN,
    TO_DATE(DATE_COLUMN) as DATE_COLUMN_,
    TO_CHAR(DATE_COLUMN_, 'DDMMYYYY') as DATE_WID,
    status as STATUS,
    productline as PRODUCT_LINE,
    msrp as MSRP,
    productcode as PRODUCT_CODE,
    customername as CUSTOMER_NAME,
    phone as PHONE, 
    addressline1 as ADDRESS_LINE,
    city as CITY,
    state as STATE,
    postalcode as POSTAL_CODE,
    country as COUNTRY,
    territory as TERRITORY,
    concat(contactfirstname,' ',contactlastname) as CONTACT_NAME,
    dealsize as DEAL_SIZE

from {{ref('orders_seed')}}

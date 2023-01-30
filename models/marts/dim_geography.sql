select

    ROW_NUMBER() OVER(ORDER BY City) AS City_ID,
    City,
    State,
    Country,
    Territory

from {{ref('stg_orders')}}

group by City, State, Country, Territory
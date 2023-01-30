select

    seq_geography.nextval as City_ID,
    City,
    State,
    Country,
    Territory

from {{ref('stg_orders')}}

group by City, State, Country, Territory
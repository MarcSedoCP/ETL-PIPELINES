select

    seq_geography.nextval AS GEO_WID,
    A.CITY,
    A.STATE,
    A.COUNTRY,
    A.POPULATION as COUNTRY_POPULATION,
    A.TERRITORY,
    current_timestamp() AS CREATED_DATE

FROM

(select

    st.CITY,
    st.STATE,
    st.COUNTRY,
    de.POPULATION,
    st.TERRITORY

from {{ref('stg_orders')}} st

left join dim_demography de
on st.COUNTRY = de.COUNTRY_NAME

group by st.CITY, st.STATE, st.COUNTRY, de.POPULATION, st.TERRITORY) A 
with source as (

select * from {{ ref('dim_geography')}}
),

nulls_count as (

select 
  count(case when COUNTRY_POPULATION is null then 1 end) as num_nulls,
  round(count(case when COUNTRY_POPULATION is null then 1 end) * 100.0 / count(*), 2) as pct_nulls
from source

)

select * from nulls_count

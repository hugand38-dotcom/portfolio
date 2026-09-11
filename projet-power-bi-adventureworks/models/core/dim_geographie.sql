{{ config(materialized='table') }}

select
    a.addressid,
    a.city,
    sp.stateprovincecode,
    sp.name as province,
    cr.name as pays
from {{ ref('stg_address') }} a
left join {{ ref('stg_stateprovince') }} sp
    on a.stateprovinceid = sp.stateprovinceid
left join {{ ref('stg_countryregion') }} cr
    on sp.countryregioncode = cr.countryregioncode
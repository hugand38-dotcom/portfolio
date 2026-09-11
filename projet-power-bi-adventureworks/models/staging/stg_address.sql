{{ config(materialized='view') }}   

select
    addressid,
    addressline1,
    addressline2,
    city,
    stateprovinceid,
    postalcode,
    spatiallocation,
    modifieddate
from {{ source('ods', 'address') }}

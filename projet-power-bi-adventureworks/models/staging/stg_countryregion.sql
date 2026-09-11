{{ config(materialized='view') }}

select
    countryregioncode,
    decode(encode(name, 'ISO-8859-1'), 'UTF-8') as name,
    modifieddate
from {{ source('ods', 'countryregion') }}

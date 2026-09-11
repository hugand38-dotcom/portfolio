{{ config(materialized='view') }}

select
    stateprovinceid,
    countryregioncode,
    decode(encode(name, 'ISO-8859-1'), 'UTF-8') as name,
    territoryid,
    isonlystateprovinceflag,
    stateprovincecode,
    modifieddate
from {{ source('ods', 'stateprovince') }}

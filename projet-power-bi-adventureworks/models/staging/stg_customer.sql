{{ config(materialized='view') }}

select
    customerid,
    personid,
    storeid,
    territoryid
from {{ source('ods', 'customer') }}

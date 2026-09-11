{{ config(materialized='view') }}

select
    salesreasonid,
    name,
    reasontype,
    modifieddate
from {{ source('ods', 'salesreason') }}

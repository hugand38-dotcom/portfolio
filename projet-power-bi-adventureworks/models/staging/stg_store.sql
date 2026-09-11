{{ config(materialized='view') }}

select
    businessentityid,
    storename,
    salespersonid,
    modifieddate
from {{ source('ods', 'store') }}

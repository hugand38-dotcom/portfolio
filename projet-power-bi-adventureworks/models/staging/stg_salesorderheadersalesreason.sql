{{ config(materialized='view') }}

select
    salesorderid,
    salesreasonid,
    modifieddate
from {{ source('ods', 'salesorderheadersalesreason') }}

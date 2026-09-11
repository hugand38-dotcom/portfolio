{{ config(materialized='table') }}

select
    salesorderid,
    salesreasonid
from {{ ref('stg_salesorderheadersalesreason') }}

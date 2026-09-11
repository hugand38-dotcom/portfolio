{{ config(materialized='table') }}

select
    salesreasonid,
    name as raison_vente,
    reasontype
from {{ ref('stg_salesreason') }}

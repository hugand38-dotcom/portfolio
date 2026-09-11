{{ config(materialized='view') }}

select
    creditcardid,
    cardtype,
    cardnumber,
    expmonth,
    expyear,
    modifieddate
from {{ source('ods', 'creditcard') }}

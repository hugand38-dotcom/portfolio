{{ config(materialized='view') }}

select
    businessentityid,
    title,
    decode(encode(firstname, 'ISO-8859-1'), 'UTF-8') as firstname,
    middlename,
    decode(encode(lastname, 'ISO-8859-1'), 'UTF-8') as lastname,
    persontype,
    namestyle,
    suffix,
    emailpromotion,
    modifieddate
from {{ source('ods', 'person') }}

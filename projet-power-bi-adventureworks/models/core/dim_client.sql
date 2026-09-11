{{ config(materialized='table') }}

select
    c.customerid,
    c.personid,
    c.storeid,
    c.territoryid,
    per.firstname,
    per.lastname,
    per.persontype,
    s.storename
from {{ ref('stg_customer') }} c
left join {{ ref('stg_person') }} per
    on c.personid = per.businessentityid
left join {{ ref('stg_store') }} s
    on c.storeid = s.businessentityid

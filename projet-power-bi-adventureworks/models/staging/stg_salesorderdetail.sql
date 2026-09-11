{{ config(materialized='view') }}

select
    salesorderid,
    orderqty,
    salesorderdetailid,
    unitprice,
    specialofferid,
    productid,
    unitpricediscount,
    modifieddate
from {{ source('ods', 'salesorderdetail') }}

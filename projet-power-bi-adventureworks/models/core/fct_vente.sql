{{ config(materialized='table') }}

select
    sod.salesorderid,
    sod.salesorderdetailid,
    sod.productid,
    soh.customerid,
    soh.orderdate,
    soh.onlineorderflag,
    soh.billtoaddressid,
    soh.shiptoaddressid,
    sod.orderqty,
    sod.unitprice,
    sod.unitpricediscount,
    sod.orderqty * sod.unitprice
        * (1 - sod.unitpricediscount) as montant_ligne
from {{ ref('stg_salesorderdetail') }} sod
join {{ ref('stg_salesorderheader') }} soh
    on soh.salesorderid = sod.salesorderid
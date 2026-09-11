{{ config(materialized='view') }}

select
    salesorderid,
    shipmethodid,
    billtoaddressid,
    taxamt,
    shiptoaddressid,
    onlineorderflag,
    territoryid,
    status,
    orderdate,
    creditcardapprovalcode,
    subtotal,
    creditcardid,
    currencyrateid,
    revisionnumber,
    freight,
    duedate,
    totaldue,
    customerid,
    salespersonid,
    shipdate,
    accountnumber,
    modifieddate
from {{ source('ods', 'salesorderheader') }}

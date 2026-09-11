{{ config(materialized='view') }}

select
    productid,
    name,
    safetystocklevel,
    finishedgoodsflag,
    class,
    makeflag,
    productnumber,
    reorderpoint,
    productmodelid,
    weightunitmeasurecode,
    standardcost,
    productsubcategoryid,
    listprice,
    daystomanufacture,
    productline,
    color,
    sellstartdate,
    weight,
    modifieddate
from {{ source('ods', 'product') }}

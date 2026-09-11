{{ config(materialized='view') }}

select
    productsubcategoryid,
    productcategoryid,
    name,
    modifieddate
from {{ source('ods', 'productsubcategory') }}

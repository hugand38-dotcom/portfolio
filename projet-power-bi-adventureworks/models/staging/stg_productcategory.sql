{{ config(materialized='view') }}

select
    productcategoryid,
    name,
    modifieddate
from {{ source('ods', 'productcategory') }}

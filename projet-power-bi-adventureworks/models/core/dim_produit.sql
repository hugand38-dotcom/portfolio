{{ config(materialized='table') }}

select
    p.productid,
    p.name as nom_produit,
    p.productnumber,
    p.color,
    p.listprice,
    p.standardcost,
    p.weight,
    p.productline,
    p.class,
    ps.name as sous_categorie,
    pc.name as categorie
from {{ ref('stg_product') }} p
left join {{ ref('stg_productsubcategory') }} ps
    on p.productsubcategoryid = ps.productsubcategoryid
left join {{ ref('stg_productcategory') }} pc
    on ps.productcategoryid = pc.productcategoryid

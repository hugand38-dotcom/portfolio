{{ config(materialized='table') }}

with vente_produit as (
    select
        p.productid,
        p.nom_produit,
        p.categorie,
        sum(f.montant_ligne) as ca
    from {{ ref('fct_vente') }} f
    join {{ ref('dim_produit') }} p
        on f.productid = p.productid
    group by 1, 2, 3
)

select
    productid,
    nom_produit,
    categorie,
    ca,
    row_number() over (
        partition by categorie
        order by ca desc
    ) as rang_categorie
from vente_produit
{{ config(materialized='table') }}

select
    f.salesorderid,
    f.city as ville_facturation,
    l.city as ville_livraison,
    f.province as province_facturation,
    l.province as province_livraison,
    case when f.addressid = l.addressid then 'Identique' else 'Différente' end as statut
from {{ ref('dim_adresse_facturation') }} f
join {{ ref('dim_adresse_livraison') }} l
    on f.salesorderid = l.salesorderid
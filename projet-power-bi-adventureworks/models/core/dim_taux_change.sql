{{ config(materialized='table') }} 

select 
    pays, 
    devise, 
    taux_usd_2011, 
    source, 
    date_publication, 
    licence 
from {{ ref('taux_change2011') }}  
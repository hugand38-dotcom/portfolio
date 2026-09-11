{{ config(materialized='table') }} 

select distinct 
    soh.salesorderid, 
    a.addressid, 
    a.city, sp.name as province, 
    cr.name as pays 
    from {{ ref('stg_salesorderheader') }} soh 
    join {{ ref('stg_address') }} a     
        on soh.shiptoaddressid = a.addressid 
    left join {{ ref('stg_stateprovince') }} sp 
        on a.stateprovinceid = sp.stateprovinceid 
    left join {{ ref('stg_countryregion') }} cr 
        on sp.countryregioncode = cr.countryregioncode
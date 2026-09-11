with source as (
        select * from {{ source('ods', 'productcategory') }}
  ),
  renamed as (
      select
          {{ adapter.quote("productcategoryid") }},
        {{ adapter.quote("name") }},
        {{ adapter.quote("modifieddate") }},
        {{ adapter.quote("_rescued_data") }}

      from source
  )
  select * from renamed
    
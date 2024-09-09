with 

source as (

    select * from {{ source('raw', 'products') }}

),

renamed as (

    select

    from source

)

select * from renamed

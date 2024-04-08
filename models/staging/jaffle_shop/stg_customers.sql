with customers as (
    
    select 
        {{ dbt_utils.generate_surrogate_key(['id'])}} as pk_id,
        id as customer_id,
        first_name,
        last_name

    from {{ source('jaffle_shop', 'customers') }}
)

select * from customers
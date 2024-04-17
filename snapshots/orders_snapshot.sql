{% snapshot orders_snapshot %}

{{
    config(
      target_database='analytics',
      target_schema='orders_snapshot',
      unique_key='id',

      strategy='timestamp',
      updated_at='_etl_loaded_at',
    )
}}

select * from {{ source('jaffle_shop', 'orders') }} 

{% endsnapshot %}
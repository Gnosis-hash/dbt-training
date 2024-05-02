{% snapshot test_snapshot %}

{{
    config(
      target_database='dbt-training-374004',
      target_schema='snapshot',
      unique_key='id',

      strategy='timestamp',
      updated_at='date',
    )
}}

select * from {{ ref('test_seed_re') }}

{% endsnapshot %}
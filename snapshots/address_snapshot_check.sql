{% snapshot address_snapshot_check %}
    {{
        config(
            target_schema='snapshot',
            unique_key='customer_id',
            strategy='check',
            check_cols=['address']
        )
    }}

    select * from raw.customer
 {% endsnapshot %}
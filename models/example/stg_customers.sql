with stg_customers AS (
    SELECT
        customer_id,
        CONCAT(first_name, ' ', last_name) as customer_name,
        email as email_address,
        address as biling_address
    FROM raw.customer
)

SELECT * from stg_customers
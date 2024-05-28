SELECT
    o.order_id,
    c.customer_id,
    c.customer_name,
    p.product_id,
    p.product_name,
    o.Quantity,
    o.order_date
FROM
    raw.orders o
JOIN
    {{ ref('stg_customers') }} c ON o.Customer_ID = c.customer_id
JOIN
    raw.products p ON o.product_id = p.product_id
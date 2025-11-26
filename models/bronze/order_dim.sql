
{{ config(
    materialized='table'
) }}

select
    order_id,
    quantity,
    order_date
from {{ ref('orders') }}
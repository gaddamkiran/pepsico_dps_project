{{ config(materialized='table') }}

select
    C_CUSTOMER_SK,
    C_CUSTOMER_ID,
    C_SALUTATION,
    C_FIRST_NAME,
    C_LAST_NAME,
    C_LOGIN,
    C_EMAIL_ADDRESS,
    C_PREFERRED_CUST_FLAG
from {{ source('staging', 'CIAM_CUSTOMERS') }}

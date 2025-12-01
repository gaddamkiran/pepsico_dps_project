
{{ config(materialized = 'table') }}

with cleaned as (
    select
        OrderID,
        CustomerName,
        coalesce(Destination, 'Unknown') as destination,
        DispatchDate as dispatch_date,
        VehicleID as veh_id,
        DriverName as driver_name
    from {{ ref('order_dispatch_planning')}}
)

select * from cleaned;
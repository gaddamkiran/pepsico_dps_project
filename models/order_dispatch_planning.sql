
{{ config(materialized = 'view') }}

Select

    OrderID,
    CustomerName,
    Destination,
    DispatchDate,
    VehicleID,
    DriverName

from {{ source('charan_demo_db', 'order_dispatch_planning')}}
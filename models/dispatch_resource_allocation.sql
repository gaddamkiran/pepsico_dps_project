
{{ config( materialized = 'view') }}

Select
    ResourceID,
    VehicleID,
    DriverID,
    FuelAllocated,
    LuggageWeight,
    Remarks
from {{ source('charan_demo_db', 'dispatch_resource_allocation')}}
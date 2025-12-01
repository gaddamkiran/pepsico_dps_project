
{{ config( materialized = 'table') }}

with cleaned as (
    select
        ResourceID,
        VehicleID,
        DriverID,
        coalesce(FuelAllocated, 0) as fuel_allocated,
        coalesce(LuggageWeight, 0) as lugagge_weight,
        coalesce(Remarks, 'No Remarks') as remarks
    from {{ ref('dispatch_resource_allocation') }}

)
select * from cleaned;

{{ config(materialized = 'table') }}

With Cleaned as (
    Select
        DispatchID as dispatch_id,
        VehicleID as veh_id,
        coalesce(DriverName, 'Unknown') as dr_name,
        coalesce(Route, 'Unassigned') AS route,
        DepartureTime as departure_time,
        ArrivalTime as arrival_time,
        Status as status
    from {{ ref( 'vehicle_dispatch_schedule')}}
)

select * from cleaned;

{{ config(materialized = ' view') }}

Select 
    DispatchID,
    VehicleID,
    DriverName,
    Route,
    DepartureTime,
    ArrivalTime,
    Status

From {{ source('charan_demo_db', 'vehicle_dispatch_schedule') }}
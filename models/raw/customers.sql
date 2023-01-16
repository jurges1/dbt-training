{{
    config(
        materialized='table'
    )
}}

select * from postgres.public.customer
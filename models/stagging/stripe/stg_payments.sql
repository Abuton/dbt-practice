with payments as (

    select
        id as payment_id,
        orderid,
        paymentmethod,
        status,
        {{ cents_to_dollars('amount', 6) }} as amount,
        created,
        _batched_at

    from {{ source('stripe', 'payment') }}

)

select * from payments
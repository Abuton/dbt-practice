with payments as (

    select
        id as payment_id,
        orderid,
        paymentmethod,
        status,
        amount/100 as amount,
        created

    from raw.stripe.payment

)

select * from payments

-- credit_card, coupon, gift_card, bank_transfer
select
    -- from raw_orders
    orderid,
    orderdate,
    shipdate,
    shipmode,
    o.customerid,
    o.productid,
    ordersellingprice,
    ordercostprice,
    -- from raw_customer
    customername,
    segment,
    country,
    -- from raw_product
    category,
    productname,
    subcategory,
    ordersellingprice - ordercostprice as orderprofit
from {{ ref("raw_orders") }} as o
left join {{ ref("customers") }} as c on o.customerid = c.customerid
left join {{ ref("raw-_product") }} as p on o.productid = p.productid

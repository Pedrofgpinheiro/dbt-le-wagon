 SELECT
      products_id,
      date_date,
      orders_id,
      revenue,
      quantity,
      purchase_price,
      ROUND(s.quantity*p.purchase_price,2) AS purchase_cost,
      ROUND((s.revenue - s.quantity*p.purchase_price),2) AS margin
  FROM {{ref("stg_raw__sales")}} as s
  LEFT JOIN {{ref("stg_raw__products")}} as p
      USING (products_id)
SELECT p.product_name, SUM(o.unit) as unit
FROM Products p
LEFT JOIN Orders o
ON p.product_id = o.product_id
WHERE extract(year_month from o.order_date)=202002
GROUP BY o.product_id
HAVING SUM(o.unit)>=100
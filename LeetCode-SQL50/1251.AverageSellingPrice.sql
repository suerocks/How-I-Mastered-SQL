SELECT p.product_id,
CASE WHEN u.units IS NOT NULL THEN ROUND(SUM(p.price * u.units) / SUM(u.units), 2)
     WHEN u.units IS NULL THEN 0
END AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
WHERE u.purchase_date BETWEEN start_date AND end_date OR u.purchase_date IS NULL
GROUP BY p.product_id
ORDER BY p.product_id

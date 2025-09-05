SELECT
  customer_name,
  sale_date,
  product,
  amount,
  SUM(amount) OVER (
    PARTITION BY customer_name
    ORDER BY sale_date
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
  ) AS running_total
FROM Sales
ORDER BY customer_name, sale_date;

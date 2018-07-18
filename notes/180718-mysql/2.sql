use e-commerce;

-- Get products and products qty purchased
SELECT a.*, c.*
FROM product a
INNER JOIN (
  SELECT b.product_id, SUM(b.quantity) qtys
  FROM detail b
  GROUP BY b.product_id
  HAVING qtys > 2
) AS c
ON a.id = c.product_id;

-- FROM -> JOIN -> WHERE -> GROUP BY -> HAVING ->>>>>>>>>>>> SELECT

-- Get invoices and invoices' value
SELECT a.*, d.total
FROM invoice a
INNER JOIN (
  SELECT b.invoice_id, SUM(b.quantity * c.price) AS total
  FROM detail b
  INNER JOIN product c
  ON b.product_id = c.id
  GROUP BY b.invoice_id
) d
ON a.id = d.invoice_id;

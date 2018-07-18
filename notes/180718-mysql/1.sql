-- Database: 'e-commerce'
use e-commerce;

-- Get users which have no invoices
-- LEFT JOIN
SELECT user.id, user.name FROM user LEFT JOIN invoice ON user.id = invoice.user_id WHERE invoice.user_id IS NULL;

-- Subquery WHERE
SELECT user.id, user.name FROM user WHERE user.id NOT IN (SELECT invoice.user_id FROM invoice);

-- Get products which have not been purchased
-- Subquery
SELECT product.id, product.name FROM product WHERE product.id NOT IN (SELECT detail.product_id FROM detail);
-- Join
SELECT product.id, product.name FROM product LEFT JOIN detail ON product.id = detail.product_id WHERE detail.id IS NULL;

--Get products and qty purchased
SELECT p.id, p.name, (SELECT sum(d.quantity) FROM detail d WHERE d.product_id = p.id) as total FROM product p;

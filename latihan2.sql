SELECT items.name AS "nama items", COUNT(*) AS "jumlah penjualan", items.price AS "harga",items.price*COUNT(*) AS "total pemasukan"
FROM sales_records
JOIN items
ON sales_records.item_id=items.id
GROUP BY items.name, items.cost
ORDER BY COUNT(*)*items.price DESC LIMIT 5;
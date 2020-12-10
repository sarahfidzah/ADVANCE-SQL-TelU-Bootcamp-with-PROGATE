-- dapatkan data total penjualan untuk gender pria, wanita, dan netral
SELECT SUM(items.price) AS "total harga", SUM(items.price-items.cost) AS "laba", 1.0*SUM(items.price-items.cost)/SUM(items.price)*100 AS "presentase laba"
FROM sales_records
JOIN items
ON sales_records.item_id=items.id;
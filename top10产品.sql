SELECT
产品名称,
ROUND(SUM(金额)) as 总销售额
FROM 订单表
WHERE 产品名称 IS NOT NULL
GROUP BY 产品名称
ORDER BY ROUND(SUM(金额)) desc
LIMIT 10;
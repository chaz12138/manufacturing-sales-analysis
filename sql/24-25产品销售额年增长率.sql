SELECT 
    t2024.产品名称,
    t2024.金额 as 销售额_2024,
    t2025.金额 as 销售额_2025,
    (t2025.金额 - t2024.金额) / t2024.金额 as 年增长率
FROM 
    (SELECT 产品名称, SUM(金额) as 金额 FROM 订单表 WHERE YEAR(日期)=2024 GROUP BY 产品名称) as t2024
JOIN 
    (SELECT 产品名称, SUM(金额) as 金额 FROM 订单表 WHERE YEAR(日期)=2025 GROUP BY 产品名称) as t2025
ON t2024.产品名称 = t2025.产品名称;
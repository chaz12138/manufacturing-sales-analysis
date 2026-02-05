SELECT 
    strftime('%Y-%m', 日期) as 年月, 
    SUM(金额)
FROM 订单表 
GROUP BY strftime('%Y-%m', 日期);
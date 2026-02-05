SELECT 
    strftime('%Y', 日期) as 年份,
    ROUND(SUM(金额)) as 年销售额,
    COUNT(*) as 订单笔数
FROM 订单表
GROUP BY strftime('%Y', 日期)
ORDER BY 年份;
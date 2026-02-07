SELECT 
    DATE_FORMAT(日期, '%Y') as 年份,
    ROUND(SUM(金额)) as 年销售额,
    COUNT(*) as 订单笔数
FROM 订单表
GROUP BY DATE_FORMAT(日期, '%Y')
ORDER BY 年份;

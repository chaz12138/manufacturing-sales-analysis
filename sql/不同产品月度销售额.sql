SELECT 
    产品名称,
    DATE_FORMAT(日期, '%Y-%m') as 月份,
    SUM(金额) as 当月销售额
FROM 订单表
GROUP BY 产品名称, DATE_FORMAT(日期, '%Y-%m')
ORDER BY 产品名称, 月份;

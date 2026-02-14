SELECT 
    产品名称,
    月份,
    当月销售额,
    上月销售额,
    (当月销售额 - 上月销售额) / 上月销售额 as 环比变化率
FROM (
    SELECT 
        产品名称,
        DATE_FORMAT(日期, '%Y-%m') as 月份,
        SUM(金额) as 当月销售额,
        LAG(SUM(金额)) OVER (PARTITION BY 产品名称 ORDER BY DATE_FORMAT(日期, '%Y-%m')) as 上月销售额
    FROM 订单表
    GROUP BY 产品名称, DATE_FORMAT(日期, '%Y-%m')
) as 月度汇总
WHERE 上月销售额 IS NOT NULL
ORDER BY 环比变化率

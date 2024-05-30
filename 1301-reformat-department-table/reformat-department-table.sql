SELECT id, 
       ISNULL([Jan], null) AS Jan_Revenue,
       ISNULL([Feb], null) AS Feb_Revenue,
       ISNULL([Mar], null) AS Mar_Revenue,
       ISNULL([Apr], null) AS Apr_Revenue,
       ISNULL([May], null) AS May_Revenue,
       ISNULL([Jun], null) AS Jun_Revenue,
       ISNULL([Jul], null) AS Jul_Revenue,
       ISNULL([Aug], null) AS Aug_Revenue,
       ISNULL([Sep], null) AS Sep_Revenue,
       ISNULL([Oct], null) AS Oct_Revenue,
       ISNULL([Nov], null) AS Nov_Revenue,
       ISNULL([Dec], null) AS Dec_Revenue
FROM (
  SELECT id, month, revenue
  FROM Department
) AS SourceTable
PIVOT (
  SUM(revenue)
  FOR month IN ([Jan], [Feb], [Mar], [Apr], [May], [Jun], [Jul], [Aug], [Sep], [Oct], [Nov], [Dec])
) AS PivotTable;

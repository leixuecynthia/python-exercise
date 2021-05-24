SELECT ad_id, 
ifnull(round(SUM(CASE WHEN ACTION = 'Clicked' THEN 1 ELSE 0 END) / SUM(CASE WHEN ACTION = 'Clicked' OR ACTION = 'Viewed' THEN 1 ELSE 0 END) * 100, 2), 0) AS ctr
FROM Ads   
GROUP BY ad_id
ORDER BY ctr DESC, ad_id ASC


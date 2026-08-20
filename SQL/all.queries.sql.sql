SELECT
    COUNT(*) AS total_records
FROM ad_data;


SELECT
    "month",
    "day",
    "Date",
    "campaign_number",
    "placement",
    "displays",
    "clicks",
    "Placement (Clean"
FROM ad_data
LIMIT 10;



SELECT
    "Placement (Clean" AS placement_type,
    COUNT(*) AS placement_count
FROM ad_data
GROUP BY "Placement (Clean"
ORDER BY placement_count DESC;


SELECT
    "placement",
    COUNT(*) AS record_count
FROM ad_data
GROUP BY "placement"
ORDER BY record_count DESC;



SELECT
    "Placement (Clean" AS placement_type,
    COUNT(*) AS placement_count,
    SUM(CAST("displays" AS REAL)) AS total_displays,
    SUM(CAST("clicks" AS REAL)) AS total_clicks,
    ROUND(
        SUM(CAST("displays" AS REAL)) / NULLIF(COUNT(*), 0),
        2
    ) AS average_displays_per_placement,
    ROUND(
        100.0 * SUM(CAST("clicks" AS REAL)) /
        NULLIF(SUM(CAST("displays" AS REAL)), 0),
        2
    ) AS ctr_percent
FROM ad_data
GROUP BY "Placement (Clean"
ORDER BY ctr_percent DESC;



SELECT
    "campaign_number" AS campaign,
    COUNT(*) AS number_of_records,
    SUM(CAST("displays" AS REAL)) AS total_displays,
    SUM(CAST("clicks" AS REAL)) AS total_clicks,
    ROUND(
        SUM(CAST("displays" AS REAL)) / NULLIF(COUNT(*), 0),
        2
    ) AS average_displays_per_campaign,
    ROUND(
        100.0 * SUM(CAST("clicks" AS REAL)) /
        NULLIF(SUM(CAST("displays" AS REAL)), 0),
        2
    ) AS ctr_percent
FROM ad_data
GROUP BY "campaign_number"
ORDER BY ctr_percent DESC;




SELECT
    "month" AS month,
    "campaign_number" AS campaign,
    SUM(CAST("displays" AS REAL)) AS total_displays,
    SUM(CAST("clicks" AS REAL)) AS total_clicks,
    ROUND(
        100.0 * SUM(CAST("clicks" AS REAL)) /
        NULLIF(SUM(CAST("displays" AS REAL)), 0),
        2
    ) AS ctr_percent
FROM ad_data
GROUP BY
    "month",
    "campaign_number"
ORDER BY
    CASE LOWER("month")
        WHEN 'january' THEN 1
        WHEN 'february' THEN 2
        WHEN 'march' THEN 3
        WHEN 'april' THEN 4
        WHEN 'may' THEN 5
        WHEN 'june' THEN 6
        WHEN 'july' THEN 7
        WHEN 'august' THEN 8
        WHEN 'september' THEN 9
        WHEN 'october' THEN 10
        WHEN 'november' THEN 11
        WHEN 'december' THEN 12
    END,
    "campaign_number";




SELECT
    "month" AS month,
    "Placement (Clean" AS placement_type,
    SUM(CAST("displays" AS REAL)) AS total_displays,
    SUM(CAST("clicks" AS REAL)) AS total_clicks,
    ROUND(
        100.0 * SUM(CAST("clicks" AS REAL)) /
        NULLIF(SUM(CAST("displays" AS REAL)), 0),
        2
    ) AS ctr_percent
FROM ad_data
GROUP BY
    "month",
    "Placement (Clean"
ORDER BY
    CASE LOWER("month")
        WHEN 'january' THEN 1
        WHEN 'february' THEN 2
        WHEN 'march' THEN 3
        WHEN 'april' THEN 4
        WHEN 'may' THEN 5
        WHEN 'june' THEN 6
        WHEN 'july' THEN 7
        WHEN 'august' THEN 8
        WHEN 'september' THEN 9
        WHEN 'october' THEN 10
        WHEN 'november' THEN 11
        WHEN 'december' THEN 12
    END,
    ctr_percent DESC;



SELECT
    COUNT(*) AS total_records,
    SUM(CAST("displays" AS REAL)) AS total_displays,
    SUM(CAST("clicks" AS REAL)) AS total_clicks,
    ROUND(
        SUM(CAST("displays" AS REAL)) / NULLIF(COUNT(*), 0),
        2
    ) AS average_displays_per_record,
    ROUND(
        100.0 * SUM(CAST("clicks" AS REAL)) /
        NULLIF(SUM(CAST("displays" AS REAL)), 0),
        2
    ) AS overall_ctr_percent,
    COUNT(DISTINCT "campaign_number") AS campaign_count,
    COUNT(DISTINCT "Placement (Clean") AS placement_type_count,
    COUNT(DISTINCT "month") AS month_count
FROM ad_data;








SELECT
    SUM(CAST("displays" AS REAL)) AS total_displays,
    SUM(CAST("clicks" AS REAL)) AS total_clicks,
    ROUND(
        100.0 * SUM(CAST("clicks" AS REAL)) /
        NULLIF(SUM(CAST("displays" AS REAL)), 0),
        2
    ) AS overall_ctr_percent
FROM ad_data;




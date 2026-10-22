-- Segmentation validation coverage

SELECT
    (SELECT COUNT(*)
     FROM trendone.customer_analysis) AS customer_rows,

    (SELECT COUNT(*)
     FROM trendone.customer_segments) AS segment_rows,

    (SELECT COUNT(*)
     FROM trendone.customer_analysis AS c
     JOIN trendone.customer_segments AS s
       ON c.customer_id = s.customer_id) AS matched_rows;

-- Find customer with no segment

SELECT c.customer_id
FROM trendone.customer_analysis AS c
LEFT JOIN trendone.customer_segments AS s
    ON c.customer_id = s.customer_id
WHERE s.customer_id IS NULL;

SELECT s.customer_id
FROM trendone.customer_segments AS s
LEFT JOIN trendone.customer_analysis AS c
    ON s.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- Cluster distribution check

SELECT
    cluster,
    segment_name,
    COUNT(*) AS customer_count,
    ROUND(
        100.0 * COUNT(*)
        / SUM(COUNT(*)) OVER (),
        2
    ) AS percentage_of_all_customers
FROM trendone.customer_segments
GROUP BY
    cluster,
    segment_name
ORDER BY cluster;
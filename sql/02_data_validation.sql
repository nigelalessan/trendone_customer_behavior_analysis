-- 2.1 Check total rows
SELECT COUNT(*) AS row_count
FROM trendone.customer_analysis;

-- 2.2 Check unique IDs
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT customer_id) AS unique_customer_ids,
    COUNT(*) - COUNT(DISTINCT customer_id) AS possible_duplicate_ids
FROM trendone.customer_analysis;

-- 2.3 Check missing values
SELECT
    COUNT(*) FILTER (
        WHERE age IS NULL
    ) AS missing_age,

    COUNT(*) FILTER (
        WHERE purchase_amount_usd IS NULL
    ) AS missing_purchase_amount,

    COUNT(*) FILTER (
        WHERE review_rating IS NULL
    ) AS missing_review_rating,

    COUNT(*) FILTER (
        WHERE previous_purchases IS NULL
    ) AS missing_previous_purchases
FROM trendone.customer_analysis;

-- 2.4 Check range
SELECT *
FROM trendone.customer_analysis
WHERE age NOT BETWEEN 18 AND 70
	OR purchase_amount_usd < 0
    OR previous_purchases < 0
    OR review_rating NOT BETWEEN 1 AND 5;

-- 2.5 Check subscriber count
SELECT
    subscription_status,
    COUNT(*) AS customer_count
FROM trendone.customer_analysis
GROUP BY subscription_status
ORDER BY customer_count DESC;

-- 2.6 Check duplicate
SELECT
    customer_id,
    age,
    gender,
    purchase_amount_usd,
    previous_purchases,
    review_rating,
    COUNT(*) AS occurrences
FROM trendone.customer_analysis
GROUP BY
    customer_id,
    age,
    gender,
    purchase_amount_usd,
    previous_purchases,
    review_rating
HAVING COUNT(*) > 1;
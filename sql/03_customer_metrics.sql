-- 3.1 Data overview
SELECT
    COUNT(*) AS customer_records,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_recorded_purchase_amount,
    ROUND(MIN(purchase_amount_usd), 2) AS min_purchase_amount,
    ROUND(MAX(purchase_amount_usd), 2) AS max_purchase_amount,
    ROUND(AVG(previous_purchases), 2) AS avg_previous_purchases,
    ROUND(AVG(review_rating), 2) AS avg_review_rating
FROM trendone.customer_analysis;

-- 3.2 Customer characteristic metrics
SELECT
    gender,
    COUNT(*) AS customer_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase_amount,
    ROUND(AVG(previous_purchases), 2) AS avg_previous_purchases,
    ROUND(AVG(review_rating), 2) AS avg_review_rating
FROM trendone.customer_analysis
GROUP BY gender
ORDER BY avg_purchase_amount DESC;

-- 3.3 Product category metrics
SELECT
    category,
    COUNT(*) AS customer_record_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase_amount,
    ROUND(MIN(purchase_amount_usd), 2) AS min_purchase_amount,
    ROUND(MAX(purchase_amount_usd), 2) AS max_purchase_amount
FROM trendone.customer_analysis
GROUP BY category
ORDER BY avg_purchase_amount DESC;

-- 3.4 Subscription and discount metrics
SELECT
    subscription_status,
    discount_applied,
    COUNT(*) AS customer_record_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase_amount
FROM trendone.customer_analysis
GROUP BY
    subscription_status,
    discount_applied
ORDER BY
    subscription_status,
    discount_applied;
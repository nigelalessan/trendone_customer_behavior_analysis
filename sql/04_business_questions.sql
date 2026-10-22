-- AQ1. Customer characteristics vs purchase amount

-- Age
SELECT
    age,
    COUNT(*) AS customer_record_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase_amount
FROM trendone.customer_analysis
GROUP BY age
ORDER BY age;

-- Gender
SELECT
    gender,
    COUNT(*) AS customer_record_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase_amount
FROM trendone.customer_analysis
GROUP BY gender
ORDER BY avg_purchase_amount DESC;

-- Previous purchases
SELECT
    previous_purchases,
    COUNT(*) AS customer_record_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase_amount
FROM trendone.customer_analysis
GROUP BY previous_purchases
ORDER BY previous_purchases;

-- AQ2. Customer groups vs purchase amount

-- Age group
SELECT
    age_group,
    COUNT(*) AS customer_record_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase_amount,
    ROUND(MIN(purchase_amount_usd), 2) AS min_purchase_amount,
    ROUND(MAX(purchase_amount_usd), 2) AS max_purchase_amount
FROM trendone.customer_analysis
GROUP BY age_group
ORDER BY age_group;

-- Location and region
SELECT
    location,
    COUNT(*) AS customer_record_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase_amount
FROM trendone.customer_analysis
GROUP BY location
ORDER BY avg_purchase_amount DESC;

-- AQ3. Product category vs purchase amount
SELECT
    category,
    COUNT(*) AS customer_record_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase_amount,
    ROUND(AVG(review_rating), 2) AS avg_review_rating
FROM trendone.customer_analysis
GROUP BY category
ORDER BY avg_purchase_amount DESC;

-- AQ4. Discount usage vs purchase amount
SELECT
    discount_applied,
    COUNT(*) AS customer_record_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase_amount,
    ROUND(AVG(previous_purchases), 2) AS avg_previous_purchases
FROM trendone.customer_analysis
GROUP BY discount_applied
ORDER BY discount_applied;

-- AQ5. Subscription status vs purchase amount
SELECT
    subscription_status,
    COUNT(*) AS customer_record_count,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase_amount,
    ROUND(AVG(review_rating), 2) AS avg_review_rating,
    ROUND(AVG(previous_purchases), 2) AS avg_previous_purchases
FROM trendone.customer_analysis
GROUP BY subscription_status
ORDER BY subscription_status;

-- AQ6. Subscription status vs discount usage
SELECT
    subscription_status,
    discount_applied,
    COUNT(*) AS customer_record_count,
    ROUND(
        100.0 * COUNT(*)
        / SUM(COUNT(*)) OVER (
            PARTITION BY subscription_status
        ),
        2
    ) AS percentage_within_subscription_status
FROM trendone.customer_analysis
GROUP BY
    subscription_status,
    discount_applied
ORDER BY
    subscription_status,
    discount_applied;


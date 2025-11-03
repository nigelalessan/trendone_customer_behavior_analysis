-- Q1 How much male and female make purchase?

SELECT 
	gender,
	SUM(purchase_amount_usd) AS total_amount
FROM dim_customers
GROUP BY gender;


--Q2. Which age group makes the most purchases, and what is the total purchase amount for that age group?

SELECT 
	age_group,
	COUNT(*) AS total_purchase,
	SUM(purchase_amount_usd) AS total_amount_purchase
FROM dim_customers
GROUP BY age_group
ORDER BY COUNT(*) DESC;


-- Q3. Which top 3 products with the highest average review rating?

SELECT TOP 3 
	item_purchased, 
	ROUND(AVG(review_rating),2) AS avg_prd_rating
FROM dim_customers
GROUP BY item_purchased
ORDER BY AVG(review_rating) DESC;

-- Q4. Compare the average purchase amount of payment method?

SELECT 
	payment_method,
	ROUND(AVG(purchase_amount_usd),2) AS avg_purchase
FROM dim_customers
GROUP BY payment_method;

-- Q5. What kind of product Male and Femaly often to buy?
SELECT
    gender,
    category,
    COUNT(*) AS cnt
FROM dim_customers
GROUP BY
    gender,
    category
ORDER BY gender DESC, COUNT(*) DESC;

-- Q4 Average purchase amount betweeen free shipping and standard

SELECT 
	shipping_type,
	AVG(purchase_amount_usd) AS avg_purchase
FROM dim_customers
WHERE shipping_type IN ('Free Shipping', 'Standard')
GROUP BY shipping_type;


/* Q5 Do subscribed customers spend more? Compare average spend and total revenue  
between subscribers and non-subscribers. */

SELECT
	subscription_status,
	ROUND(AVG(purchase_amount_usd),2) AS avg_spend,
	SUM(purchase_amount_usd) AS total_revenue
FROM dim_customers
GROUP BY subscription_status;
-- Q6. What is the percentage of discounted sales within each category??
SELECT
	category,
	(100 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)) / COUNT(*)  AS total_pct
FROM dim_customers
GROUP BY category
ORDER BY total_pct DESC;

-- Q7. What are the top 3 most purchased products within each category? 

WITH top_item AS(
SELECT
	category,
	item_purchased,
	COUNT(*) AS total,
	ROW_NUMBER() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS rank_item
FROM dim_customers
GROUP BY category, item_purchased
)

SELECT
	category,
	rank_item,
	item_purchased,
	total
FROM top_item
WHERE rank_item <=3;

-- Q8 What season usually people go purchase in each region?

WITH top_season AS(
SELECT
	region,
	season,
	COUNT(*) AS total_purchase,
	ROW_NUMBER() OVER(PARTITION BY region ORDER BY COUNT(*) DESC) AS rank_season
FROM dim_customers
GROUP BY region, season
)

SELECT
	region,
	season,
	total_purchase
FROM top_season
WHERE rank_season = 1;

--Q9. How many customers have made more than 10 repeat purchases AND also have an active subscription?
SELECT subscription_status,
       COUNT(customer_id) AS repeat_buyers
FROM dim_customers
WHERE previous_purchases > 10 AND subscription_status = 'Yes'
GROUP BY subscription_status;

/* Q10. The number of customers segmented by: New (1 purchase), Returning (2–10 purchases), and Loyal (over 10 purchases). */


WITH customer_segment AS(
	SELECT 
	customer_id,
	purchase_amount_usd,
	previous_purchases,
	CASE 
		WHEN previous_purchases = 1 THEN 'New'
		WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
		ELSE 'Loyal'
	END AS segmentation
FROM dim_customers
)

SELECT 
	segmentation,
	ROUND(AVG(purchase_amount_usd),2) AS purchase_amount,
	COUNT(*) AS cnt
FROM customer_segment
GROUP BY segmentation
ORDER BY cnt DESC

SELECT TOP 5 *
FROM dim_customers

SELECT
	customer_id
FROM dim_customers
WHERE previous_purchases > 1


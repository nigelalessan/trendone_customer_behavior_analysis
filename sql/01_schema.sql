CREATE SCHEMA IF NOT EXISTS trendone;

CREATE TABLE IF NOT EXISTS trendone.customer_analysis (
    customer_id             INTEGER PRIMARY KEY,
    age                     INTEGER,
	age_group               VARCHAR(20),
    gender                  VARCHAR(30),
    item_purchased          VARCHAR(100),
    category                VARCHAR(100),
    purchase_amount_usd     NUMERIC(10, 2),
    location                VARCHAR(100),
	region                  VARCHAR(100),
    size                    VARCHAR(20),
    color                   VARCHAR(50),
    season                  VARCHAR(30),
    review_rating           NUMERIC(3, 2),
    subscription_status     VARCHAR(30),
	shipping_type           VARCHAR(50),
    discount_applied        VARCHAR(10),
    promo_code_used         VARCHAR(10),
    previous_purchases      INTEGER,
    previous_purchase_group VARCHAR(30),
	payment_method          VARCHAR(50),
	frequency_of_purchases  VARCHAR(50)
);
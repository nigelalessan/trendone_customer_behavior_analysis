# 📌 Data Catalog

## 🔎 Overview
This markdown is a column description guide for a table, which will serve as an reference guide for future use.
## 📋 customer_behavior_clean
This table is the `customer_behavior_clean` table, derived from the raw data, `customer_behavior_raw`, after being cleaned. New columns have also been 
added to this table. The process began with creating a view, which was then exported to a CSV file after the necessary cleaning and column additions were complete.
- | Column Name             | Data Type     | Description                                                                                                |
  |-------------------------|---------------|------------------------------------------------------------------------------------------------------------|
  | customer_id             | BIGINT        | Unique identifier for the customer who placed the order.                                                   |
  | age                     | BIGINT        | Age of the customer (in years).                                                                            |
  | age_group               | NVARCHAR(50)  | The Customer Age Group (*e.g.*, 'Young Adult', 'Adult', 'Middle-aged', 'Senior').                          |
  | gender                  | NVARCHAR(50)  | The Customer Gender (*e.g.*, 'Male', 'Female').                                                            |
  | item_purchased          | NVARCHAR(50)  | The name of the product acquired by the customer in this transaction                                       |
  | category                | NVARCHAR(50)  | The classification or grouping assigned to the product                                                     |
  | purchase_amount_usd     | BIGINT        | The country of residence.                                                                                  |
  | loc                     | NVARCHAR(50)  | The marital status of the customer (*e.g.*, 'California', 'Alabama').                                      |
  | region                  | NVARCHAR(50)  | The gender of the customer (*e.g.*, 'West', 'South').                                                      |
  | size                    | NVARCHAR(50)  | The specific size attribute of the purchased item (*e.g.*, 'L', 'M').                                      |
  | color	                  | NVARCHAR(50)  | The specific color variation of the purchased product (*e.g.*, 'Charcoal', 'Olive').                       |
  | season                  | NVARCHAR(50)  | The defined seasonal period when the order was placed (*e.g.*, 'Winter', 'Spring').                        |
  | review_rating           | FLOAT         | The numerical score or star rating provided by the customer for the product they purchased (0-5)           |
  | subscription_status     | NVARCHAR(50)  | The current status of the customer's recurring service agreement or membership on the platform             |
  | shipping_type           | NVARCHAR(50)  | The specific logistics option selected by the customer for the order delivery                              |
  | discount_applied        | NVARCHAR(50)  | Status indicating whether a promotional discount was successfully applied to this specific order           |
  | previous_purchases      | BIGINT        | The cumulative total number of completed orders placed by the customer                                     |
  | payment_method          | NVARCHAR(50)  | The mode of payment used by the customer (*e.g.*, 'Venmo', 'PayPal')                                       |
  | frequency_of_purchases  | NVARCHAR(50)  | A categorical value indicating how frequently the customer places orders                                   |
  | purchase_frequency_days | BIGINT        | A numerical value indicating how frequently the customer places orders                                     |

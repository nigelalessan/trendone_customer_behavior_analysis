# Data Assessment

## 1. Dataset Overview

The analysis uses the publicly available `customer_shopping_behavior.csv`
dataset.

For this project, the dataset is placed within the fictional business
context of TrendOne Co., a B2C fashion e-commerce company.

The dataset contains 3,900 rows and 18 columns covering customer
demographics, purchasing behavior, product information, discount usage,
subscription status, and purchase history.

|Attribute                  |Description                          |
|---------------------------|------------------------------------:|
|Original dataset name      |`customer_shopping_behavior.csv`     |
|Original source            |https://github.com/amlanmohanty1/customer-trends-data-analysis-SQL-Python-PowerBI/blob/main/customer_shopping_behavior.csv     |
|Adapted business context   |TrendOne                             |
|Number of rows             |**3900**                             |
|Number of columns          |**18**                               |
|General description dataset|`customer_shopping_behavior.csv`     |
|Accessed                   |30 October 2025                      |

***Dataset Attribution***

*- This project uses the publicly available customer_shopping_behavior.csv dataset originally provided through the referenced repository. The dataset is used as the underlying analytical data, while the TrendOne business context, analytical questions, methodology, statistical analysis, SQL analysis, dashboard, findings, and recommendations were independently developed for this portfolio project.
Source: https://github.com/amlanmohanty1/customer-trends-data-analysis-SQL-Python-PowerBI*

## 2. Unit of Observation

The dataset contains 3,900 observations and 3,900 unique `Customer ID` values. No missing or duplicate `Customer ID` values were identified.
Based on these structural characteristics, each row represents a distinct customer observation.

**Data grain: 1 row = 1 unique customer**

## 3. Data Structure

The dataset consists of 18 columns representing customer demographics,
purchasing behavior, product information, discount usage, subscription
status, and purchase history.
The structure of the dataset is summarized below.

### Data Structure

| Column                       | Data Type                    | Description                 |
| ---------------------------- | ---------------------------- | ----------------------------|
| `Customer ID`                | Identifier (`int64`)         | Customer identifier         |
| `Age`                        | Numerical (`int64`)          | Customer age                |
| `Gender`                     | Categorical (`str`)          | Customer gender             |
| `Item Purchased`             | Categorical (`str`)          | Purchased item              |
| `Category`                   | Categorical (`str`)          | Product category            |
| `Purchase Amount (USD)`      | Numerical (`int64`)          | Purchase value              |
| `Location`                   | Categorical (`str`)          | Customer location           |
| `Size`                       | Categorical (`str`)          | Size of a product           |
| `Color`                      | Categorical (`str`)          | Color of a product          |
| `Season`                     | Categorical (`str`)          | Purchase season             |
| `Review Rating`              | Numerical (`float64`)        | Customer product rating     |
| `Subscription Status`        | Categorical (`str`)          | Subscription status         |
| `Shipping Type`              | Categorical (`str`)          | Shipping method             |
| `Discount Applied`           | Categorical (`str`)          | Discount status             |
| `Promo Code Used`            | Categorical (`str`)          | Promo code applied          |
| `Previous Purchases`         | Numerical (`int64`)          | Previous purchase           |
| `Payment Method`             | Categorical (`str`)          | Customer payment method     |
| `Frequency of Purchases`     | Categorical (`str`)          | Customer purchase frequency |

### Data Type Assessment

| Column                       | Expected Type     | Actual Type   | Assesment       |
| ---------------------------- | ----------------- |:-------------:|:---------------:| 
| `Customer ID`                | Identifier        | `int64`       | Appropriate     |           
| `Age`                        | Numerical         | `int64`       | Appropriate     |           
| `Gender`                     | Categorical       | `str`         | Appropriate     |           
| `Item Purchased`             | Categorical       | `str`         | Appropriate     |           
| `Category`                   | Categorical       | `str`         | Appropriate     |           
| `Purchase Amount (USD)`      | Numerical         | `int64`       | Appropriate     |           
| `Location`                   | Categorical       | `str`         | Appropriate     |           
| `Size`                       | Categorical       | `str`         | Appropriate     |           
| `Color`                      | Categorical       | `str`         | Appropriate     |           
| `Season`                     | Categorical       | `str`         | Appropriate     |           
| `Review Rating`              | Numerical         | `float64`     | Appropriate     |           
| `Subscription Status`        | Categorical       | `str`         | Appropriate     |           
| `Shipping Type`              | Categorical       | `str`         | Appropriate     |           
| `Discount Applied`           | Categorical       | `str`         | Appropriate     |           
| `Promo Code Used`            | Categorical       | `str`         | Appropriate     |           
| `Previous Purchases`         | Numerical         | `int64`       | Appropriate     |           
| `Payment Method`             | Categorical       | `str`         | Appropriate     |           
| `Frequency of Purchases`     | Categorical       | `str`         | Appropriate     |

***Data Type Assesment summary***:

The data type assessment shows that the dataset contains appropriate
technical data types for the majority of analytical variables.

Numerical variables such as `Age`, `Purchase Amount (USD)`,
`Review Rating`, and `Previous Purchases` are stored using numeric
data types, while categorical variables are primarily stored as
object/string types.

No immediate data type mismatch requiring correction was identified
at this stage. Any transformations required for analysis, including
feature engineering or categorical encoding, will be addressed during
Data Preparation. 

## 4. Data Quality Assessment

### Missing Values
There are minimal missing values in the review_rating column, imputing these with either the mean or median will effectively resolve the issue.

### Duplicate Records & Uniqueness
No exact duplicate rows were identified.

`Customer ID` also contains no duplicate values, which is consistent
with the established customer-level data grain.

### Categorical Values

The categorical variables were reviewed for inconsistent or unexpected
values. The observed categories were generally consistent within their
respective fields.

### Data Types

The technical data types were reviewed against the intended analytical
roles of the variables. No immediate data type issues were identified.
Any required type conversion will be addressed during Data Preparation.

## 5. Value, Distribution & Plausibility

### Numerical Variables

The numerical variables were reviewed to understand their basic ranges,
central tendency, and variability.

The observed ranges of variables such as `Age`, `Purchase Amount (USD)`,
`Review Rating`, and `Previous Purchases` were broadly consistent with
their intended meanings.

### Categorical Variables

Categorical variables were reviewed based on their observed frequency
distributions. The variables contain different levels of category
representation, which will be considered when comparing customer groups
during subsequent analysis.

### Range & Plausibility

The numerical ranges were reviewed against the expected meaning of each
variable. No immediately implausible values were identified based on
the available business context.

### Potential Outliers

Potential outliers were screened using the IQR method. Observations
identified through this screening were treated as potential statistical
outliers rather than confirmed data errors.

No observations were removed at this stage. Any decision to retain,
transform, or exclude observations will be made during Data Preparation
based on their analytical relevance and validity.

## 6. Business Question Feasibility

The findings from the data assessment were evaluated against the
business questions defined for the project.

| Business Question                                                                  | Feasibility | Key Consideration                                                      |
|------------------------------------------------------------------------------------|-------------|------------------------------------------------------------------------|
| Q1. Which customer characteristics are associated with higher purchase value?      | Feasible    | Relevant customer characteristics and purchase value are available     |
| Q2. How does purchase value vary across customer groups?                           | Feasible    | Multiple customer and behavioral dimensions are available for grouping |
| Q3. How effectively does TrendOne retain customers over time?                      | Not Feasible| No transaction date or timestamp is available                          |
| Q4. Do purchasing behaviors differ across product categories?                      | Feasible    | Product category and purchasing behavior variables are available       |
| Q5. Is discount usage associated with different purchasing behavior?               | Feasible    | Discount usage and purchasing behavior variables are available         |
| Q6. Is subscription status associated with purchasing behavior?                    | Feasible    | Subscription status and purchasing behavior variables are available    |
| Q7. Is subscription status associated with discount usage?                         | Feasible    | Both variables are available for comparison                            |

### Retention Analysis Limitation

Time-based retention analysis is not feasible with the available data.

Although `Previous Purchases` and `Frequency of Purchases` provide
information about customer purchase history, the dataset does not
contain transaction dates or timestamps.

Therefore, cohort retention, time-to-repeat-purchase, and retention
over time cannot be reliably calculated.

These variables may still be used as indicators of purchase history or
engagement, but they will not be interpreted as time-based retention
metrics.

## 7. Data Limitations


The following limitations were identified during the data assessment:

1. **No transaction date or timestamp**

   The absence of temporal information prevents reliable cohort,
   time-based retention, lifecycle, and time-to-repeat-purchase analysis.

2. **Customer-level grain**

   Each row represents a customer observation rather than a
   transaction-level record. Therefore, `Purchase Amount (USD)` should
   not automatically be interpreted as total customer lifetime revenue
   or transaction-level revenue.

3. **Limited purchase history**

   `Previous Purchases` provides a count of previous purchases but does
   not provide the timing, value, or product details of those purchases.

4. **Observational data**

   Relationships identified between customer characteristics and
   purchasing behavior should be interpreted as associations rather than
   causal effects.

## 8. Analytical Decisions
Based on the data assessment, the following analytical decisions were
established:

| Finding                                                  | Analytical Decision                                                                  |
|----------------------------------------------------------|--------------------------------------------------------------------------------------|
| Customer ID is unique                                    | Treat the dataset as customer-level grain                                            |
| No missing values identified                             | missing-value is minimal simple imputation will resolve the issue                    |
| No exact duplicate rows identified                       | No duplicate removal is required                                                     |
| Categorical values are generally consistent              | Standardization will only be applied if required during preparation                  |
| No immediately implausible numerical values identified   | No automatic removal based on range checks                                           |
| Potential statistical outliers may exist                 | Investigate before deciding whether transformation or exclusion is appropriate       |
| No transaction date/timestamp                            | Exclude time-based retention and cohort analysis                                     |
| Previous Purchases is available                          | Use as a purchase-history indicator, not as a time-based retention metric            |
| Dataset is observational                                 | Interpret statistical findings as associations unless a causal design is established |

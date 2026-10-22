# **Data Preparation**

## **1. Purpose**

The objective of this data preparation phase is to ready the dataset for analysis based on the findings from the preceding data assessment. As the assessment revealed no critical issues requiring heavy intervention, the process focused on routine cleaning and the creation of analytical features to uncover broader insights. Furthermore, the raw dataset remains stored in the data/raw directory, while the cleaned and prepared data has been saved to data/processed.

## **2. Preparation Scope**

Based on the Data Assessment, the raw dataset does not require:

- Duplicate record removal
- Major data type correction

The preparation therefore focuses on feature engineering to create
additional analytical dimensions from the existing variables.

The following features are created:

| Feature                   | Source Variable      | Purpose                                                         |
|---------------------------|----------------------|-----------------------------------------------------------------|
| `Age Group`               | `Age`                | Support comparison of customer behavior across age groups       |
| `Previous Purchase Group` | `Previous Purchases` | Support comparison of customers based on purchase history       |
| `Region`                  | `Location`           | Support analysis of customer behavior across geographic regions |

The derived features are created during Data Preparation rather than included in the original raw dataset.

## **3. Feature Engineering**
### 3.1 Age Group
Customer age is converted into predefined age groups to provide a more interpretable categorical dimension for customer-level comparisons.

The age boundaries are defined using fixed age ranges rather than quantile based grouping. This preserves meaningful age intervals and allows the distribution of customers across the age groups to be observed without forcing an equal number of customers into each group.

The following groups are used:

| Age Range | Age Group |
|-----------|-----------|
| 18–24     | 18-24     |
| 25–34     | 25-34     |
| 35–44     | 35-44     |
| 45–54     | 45-54     |
| 55–64     | 55-64     |
| 65–70     | 65-70     |

The resulting `Age Group` feature is derived from the existing `Age` variable and does not replace the original age value.

The age groups are intended for analytical comparison. The original continuous `Age` variable is retained for analyses where the numerical age value is more appropriate.
### 3.2 Previous Purchase Group
`Previous Purchases` is grouped into categorical intervals to provide a more interpretable representation of customer purchase history.

The grouping allows customers to be compared according to their number of previous purchases without removing the original numerical variable.

The resulting feature is stored as `Previous Purchase Group`.

The original `Previous Purchases` variable is retained because the continuous value may still be required for numerical analysis.

> **Note**: `Previous Purchases` represents purchase history available in  the dataset. It is not interpreted as a time-based retention metric because the dataset does not contain transaction dates or timestamps.


### 3.3 Region

The `Location` variable contains individual U.S. states. To provide a higher level geographic dimension for analysis, the states are mapped into four broad U.S. regions:

| Region      | States                                                                                                                                                                         |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Northeast   | Connecticut, Maine, Massachusetts, New Hampshire, New Jersey, New York, Pennsylvania, Rhode Island, Vermont                                                                    |
| Midwest     | Illinois, Indiana, Iowa, Kansas, Michigan, Minnesota, Missouri, Nebraska, North Dakota, Ohio, South Dakota, Wisconsin                                                          |
| South       | Alabama, Arkansas, Delaware, Florida, Georgia, Kentucky, Louisiana, Maryland, Mississippi, North Carolina, Oklahoma, South Carolina, Tennessee, Texas, Virginia, West Virginia |
| West        | Alaska, Arizona, California, Colorado, Hawaii, Idaho, Montana, Nevada, New Mexico, Oregon, Utah, Washington, Wyoming                                                           |

The resulting `Region` variable provides a broader geographic grouping for regional customer analysis while retaining the original `Location` variable for more granular analysis.

## **4. Analytical Dataset**

The prepared dataset contains the original variables together with the new analytical features created during this stage.

The following transformations are applied:

- Age ➝ Age Group

- Previous Purchases ➝ Previous Purchase Group

- Location ➝ Region

## **5. Validation**

After the transformations were applied, the prepared dataset was validated to confirm that the preparation process did not introduce structural or data quality issues.

The validation includes:

Checking the number of observations,
Checking the number of variables,
Verifying Customer ID uniqueness,
Checking for duplicate rows,
Checking for missing values,
Verifying the presence of the newly created features, and
Reviewing the categories generated by the new features.

The prepared dataset is expected to maintain the original customer-level grain established during Data Assessment.

Validation Results

The validation confirms that the prepared dataset maintains the expected customer-level structure and that the derived analytical features are available for subsequent analysis.

The original raw data remains unchanged, while the prepared dataset contains the additional analytical dimensions required for the next stages.

## **6. Data Lineage**
The preparation process follows the following data lineage:
```text
trendOne_raw.csv
      │
      │ Data Preparation
      │ 
      ▼
trendOne_clean.csv
      │
      ├──────────────► 03_eda.ipynb
      │
      ├──────────────► 04_statistical_analysis.ipynb
      │
      ├──────────────► 05_customer_segmentation.ipynb
      │
      ├──────────────► SQL Analytics
      │
      └──────────────► Power BI
```

The raw dataset is treated as the source of record, while the prepared
dataset serves as the analytical input for subsequent stages.

## **7. Summary & Next Steps**
The Data Preparation stage transformed the assessed raw dataset into a prepared analytical dataset while preserving the original customer-level grain and source variables.

The preparation focused on feature engineering rather than extensive data cleaning because the Data Assessment did not identify critical missing-value, duplicate-record, or major data type issues.

Three analytical features were created:

- Age Group to support age-based customer comparisons,
- Previous Purchase Group to support comparisons based on purchase history, and
- Region to support regional customer analysis.

The prepared dataset will be used as the primary analytical input for the subsequent Exploratory Analysis stage.

The next stage will focus on exploring customer characteristics, purchasing behavior, product categories, promotional activity, and subscription patterns before proceeding to formal statistical analysis.
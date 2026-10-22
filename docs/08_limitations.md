# Limitations

## 1. Overview

This project uses a synthetic customer shopping behavior dataset containing 3,900 customer records and 18 columns. The analysis covers exploratory data analysis, statistical testing, customer segmentation, SQL-based business analysis, and dashboard development.

Although the dataset supports these analytical activities, its structure and available features impose important limitations on the conclusions that can be drawn. The findings should therefore be interpreted as exploratory results rather than definitive evidence of customer behavior in a real business environment.

The limitations below also illustrate a practical challenge in data analytics: the available data does not always contain enough information to answer every business question or produce actionable recommendations with confidence.

## 2. Dataset Structure and Granularity

### One Record per Customer

The dataset contains one record per customer rather than a transaction-level history. While `Customer ID` identifies individual records, it does not provide a sequence of purchases for each customer.

As a result, this project cannot examine changes in customer behavior across transactions, reconstruct customer journeys, or determine how purchasing patterns evolve over time.

**Business implication:** The analysis can describe the available customer attributes but cannot provide a complete picture of individual customer behavior over time.

### Missing Transaction Timestamps

The dataset does not include transaction dates or timestamps. Although it contains `Previous Purchases` and `Frequency of Purchases`, these variables do not reveal when purchases occurred or the time elapsed between them.

Consequently, the project cannot reliably perform:

- Recency analysis to identify when customers last purchased.
- Cohort-based retention analysis.
- Time-to-repeat-purchase analysis.
- Churn analysis based on an explicitly defined inactivity period.
- Seasonal or temporal purchasing analysis.

**Business implication:** Customer retention and lifecycle recommendations are limited because the data does not establish when customers return, become inactive, or change their purchasing behavior.

## 3. Limited Features for Customer Segmentation

The available variables provide only a partial view of customer value and behavior. Features such as purchase amount, previous purchase count, and review rating can support exploratory segmentation, but they do not fully capture dimensions that are commonly relevant to customer management.

Important missing or insufficiently detailed features include:

- **Recency:** Time since the customer's most recent purchase.
- **Monetary value over time:** Total customer spending over a defined period, rather than a single recorded purchase amount.
- **Transaction frequency over time:** Number of purchases within a consistent observation window.
- **Profitability:** Revenue, discounts, costs, and contribution margin at the customer or transaction level.
- **Product-level behavior:** Detailed purchase history, product combinations, and changes in category preferences.
- **Promotion response:** Whether a customer purchased because of a promotion and how their behavior changed afterward.
- **Customer lifecycle:** Acquisition date, tenure, repeat-purchase timing, and inactivity status.

Without these features, segmentation may capture differences in a limited set of recorded attributes rather than meaningful differences in customer lifecycle, long-term value, or responsiveness to business actions.

**Business implication:** The resulting clusters should be treated as exploratory customer profiles, not as fully validated customer segments for targeting, retention, or resource allocation.

## 4. Limitations of the Segmentation Results

The project applies K-Means clustering with six clusters. The final model achieves a silhouette score of approximately 0.2864, indicating limited separation between clusters in the selected feature space.

The initialization sensitivity analysis also indicates that cluster assignments can vary across different initializations. This analysis measures sensitivity to initialization; it does not establish how stable the segments would be across different samples or time periods.

Furthermore, the cluster profiles are based on the features available in this dataset. Descriptive differences in purchase amount, previous purchases, or review rating do not necessarily indicate differences in profitability, loyalty, churn risk, or future customer value.

For these reasons:

- Cluster labels are descriptive and relative to the observed data.
- The clusters should not be interpreted as naturally distinct or definitively stable customer groups.
- Cluster membership alone is insufficient to justify a specific promotion or customer treatment.
- Proposed segment-level actions require further validation using richer data and, where appropriate, controlled experiments.

**Business implication:** The current segmentation is useful for generating hypotheses, but it does not yet provide sufficient evidence for implementing differentiated customer strategies with confidence.

## 5. Synthetic Data and Limited Observable Relationships

The dataset is synthetic rather than a verified extract from an actual company's operational systems. Its distributions and relationships may therefore differ from those found in real customer populations.

In this analysis, several comparisons show no statistically significant difference in recorded purchase amount, with effect sizes that are generally negligible. These results suggest that the selected variables do not meaningfully distinguish purchase amount in the observed dataset under the analyses performed.

However, these findings do not prove that the corresponding factors are unimportant in real businesses. They may reflect the characteristics of the synthetic data, the limited features available, or the specific questions and methods used in this project.

A particularly strong association was observed between subscription status and discount usage. This relationship should be investigated carefully because it may reflect how the synthetic dataset was constructed. The observed association alone does not establish that subscription causes discount usage or that a similar relationship would hold in a real business.

**Business implication:** Findings from this dataset should not be generalized directly to real customers. They are more appropriate for demonstrating analytical reasoning, validating a workflow, and identifying what additional evidence would be needed for business decisions.

## 6. Limitations of Business Recommendations

The recommendations in this project are intentionally conservative because the available evidence does not support strong causal claims or highly specific customer treatments.

For example, the current analysis does not establish that a particular discount strategy increases spending, that subscription causes changes in purchasing behavior, or that one cluster will respond better to a particular campaign.

Instead, the results support recommendations such as investigating observed relationships, collecting more informative data, validating segment quality, and testing potential interventions before scaling them.

This distinction is important: a lack of strong findings is not necessarily a failure of the analysis. Recognizing when the evidence is insufficient is itself an important part of responsible data-driven decision-making.

## 7. Recommended Data Improvements

To support more reliable customer analytics and more actionable segmentation, a real business should consider collecting or making available the following data:

| Data requirement                                | Analytical value                                                          |
|-------------------------------------------------|---------------------------------------------------------------------------|
| Transaction ID and timestamp                    | Enables transaction-level analysis, purchase trends, and cohort analysis. |
| Customer ID linked across transactions          | Enables customer journey and repeat-purchase analysis.                    |
| Transaction quantity, unit price, and net sales | Enables more consistent spending and basket analysis.                     |
| Discount amount and promotion identifier        | Supports promotion-response analysis.                                     |
| Product ID and category per transaction         | Enables category preferences and product affinity analysis.               |
| Product cost or contribution margin             | Enables customer profitability analysis.                                  |
| Customer acquisition date and activity history  | Supports lifecycle and retention analysis.                                |
| Campaign exposure and response                  | Helps evaluate marketing effectiveness.                                   |
| Consistent observation windows                  | Makes customer frequency and monetary metrics more comparable.            |

With transaction-level data, the business could calculate RFM metrics (Recency, Frequency, and Monetary value), define meaningful observation periods, and evaluate whether segments differ in retention, profitability, or campaign response.

Even with richer data, segmentation should still be validated for interpretability, stability, and usefulness for actual business decisions.

## 8. Conclusion

The main limitation of this project is not the absence of analytical methods, but the limited ability of the available data to support deeper customer behavior analysis and confident business recommendations.

The project demonstrates how to work systematically with the data that is available, test assumptions, evaluate segmentation quality, and distinguish observed patterns from unsupported conclusions. It also identifies a clear next step: improve the data foundation before treating customer segments as a basis for targeted business actions.

In a real-world analytics environment, data quality, granularity, and relevance determine which questions can be answered responsibly. When the data does not support the desired insight, the appropriate response is to communicate that limitation, identify the missing evidence, and define what should be collected or tested next.
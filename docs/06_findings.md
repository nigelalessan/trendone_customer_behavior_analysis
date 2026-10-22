# Findings
## ***AQ1. Customer Characteristics vs Purchase Amount***
**Finding 1**: Demographic and Historical Attributes Show No Meaningful Association with Purchase Amount

**Insight**: Age, gender, and previous purchase counts show no meaningful differentiation in purchase amounts. Specifically, gender based analysis across 2,652 male and 1,248 female customers yielded similar average spending, supported by statistical tests showing no significant monotonic correlation with age or past purchases.

**Business Implication**: Individual demographic or historical traits alone are insufficient indicators of high-value customers. Avoid relying exclusively on these attributes for targeting high-value segments.

## ***AQ2. Customer Groups vs Purchase Amount***
**Finding 2**: Purchase Value Remains Consistent Across Age Groups and Geographic Regions

**Insight**: Despite variations in sample sizes, such as fewer customers in the 18-24 and 65-70 age brackets, and regional counts like Montana (96), Kansas (63), and Rhode Island (63) the average purchase amounts remain remarkably consistent. Previous statistical tests confirm no significant mean differences across these groups.

**Business Implication**: A high concentration of customers in a specific region or demographic does not automatically translate to higher total revenue per transaction. Customer volume and purchase value must be evaluated as distinct metrics.

## ***AQ3. Product Category vs Purchase Amount***
**Finding 3**: High Category Concentration Does Not Translate to Higher Average Purchase Values

**Insight**: Customer records are heavily concentrated in Clothing (1,737) and Accessories (1,240), compared to Footwear (599) and Outerwear (324). Despite these volume differences, average purchase amounts remain similar across all categories, and Welch ANOVA tests confirm no statistically significant differences in category means.

**Business Implication**: Dominance in record volume does not inherently prove higher category profitability or transaction value. True strategic prioritization requires evaluating margins, costs, and actual sales volume alongside average spend.

## ***AQ4. Discount Usage vs Purchase Amount***

**Finding 4**: Discount Usage Shows No Statistically Significant Difference in Recorded Purchase Amount

**Insight**: The dataset includes 2,223 non discount users and 1,677 discount users. Despite the different adoption levels, the average purchase amounts between the two groups are remarkably similar, with Welch's t-test confirming no statistically significant difference in means.

**Business Implication**: Current promotional data does not indicate that discounts successfully drive higher transaction values. Evaluating promotion effectiveness requires deeper metrics, such as profit margins, discount costs, conversion lifts, or controlled promotional experiments.

## ***AQ5. Subscription Status vs Purchase Amount***
**Finding 5**: Subscription Status Does Not Significantly Differentiate Purchase Amounts

**Insight**: The dataset comprises 2,847 non-subscribers and 1,053 subscribers. Prior statistical testing revealed no significant difference in average purchase amounts between the two groups.

**Business Implication**: Subscription status alone does not serve as a strong indicator of higher transaction values. However, this does not negate other potential benefits of subscriptions, as the current dataset does not capture metrics related to customer retention, profit margins, or Customer Lifetime Value (CLV).

## ***AQ6. Subscription Status vs Discount Usage***
**Finding 6**: Subscription status is strongly associated with discount usage.
Out of 2,847 non-subscribers, 78.08% did not use discounts, while 21.92% did. In contrast, 100% of the 1,053 subscribed customers were recorded as using discounts, which aligns with prior Chi-Square test results.

**Insight**: While the two variables are statistically closely related, they do not necessarily imply a causal relationship in the real world.

**Business Implication**: Further investigation is required to determine whether this linkage occurs mechanically due to system or dataset rules, and to validate it against actual operational data before formulating promotional strategies.

## ***Customer Segementation***

|Cluster   |Description                                | 
|----------|-------------------------------------------|
|0         |Higher-Spend, Lower Purchase History       |
|1         |Repeat-History, Lower-Rating               |
|2         |Lower-Spend, Lower Purchase History        |
|3         |Higher-Spend, Higher Purchase History      |
|4         |Higher-Spend, Lower-Rating                 |
|5         |Lower-Spend, Higher-Rating                 |

Cluster 0, Customers assigned to this cluster exhibit a distinct profile characterized by high purchase values alongside a low volume of past purchases.

Cluster 1, Customers in this cluster show a high purchase history, but their review ratings are low.

Cluster 2, Customers in this cluster show relativerly low purchase amounts than other cluster and a low volume of past purchases.

CLuster 3, Customers in this cluster show both high purchase amounts and a high volume of past purchases.

Cluster 4, Customers in this cluster show high purchase amounts, but they tend to give low review ratings.

Cluster 5, Customers in this cluster show relatively lower purchase amounts than the other clusters, but they tend to give high review ratings.

**Finding 7**: Balanced Cluster Sizes Require Deep Behavioral Profiling and Contextual Awareness

**Insight**: Initial clustering results show a relatively balanced distribution across six clusters. However, uniform cluster sizes do not inherently validate high clustering quality; detailed numerical and categorical profiling is necessary to uncover true behavioral distinctions. Furthermore, non-subscribers dominate roughly 73% of every cluster, reflecting the baseline composition of the entire dataset rather than a unique segment characteristic.

**Business Implication**: Segmentation successfully organizes customers based on combined purchase value, purchase history, and ratings. However, tailored segment-specific marketing strategies should only be proposed after thoroughly understanding each cluster's distinct operational profile, while accounting for dataset-wide class imbalances.

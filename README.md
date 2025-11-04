# :pushpin: TrendOne Co. Customer Behavior Analysis
<br>

---

## 📂 Repository Structure
```
trendone_customer_behavior_analysis/
│
├── datasets/                           # Raw datasets and cleaned datasets used for this project
│
├── docs/                               # include img folder and .pbix file for the dashboard
│    ├── img/                           # img assets for this analysis project
│
└── scripts/                            # All codes presented in the course including .sql for business case EDA and .ipynb for Python data cleaning
```

---

<h1 align="center">TrendOne Co.</h1>

This project is a **simulated case study** based on a fictional e-commerce company, **TrendOne** is a new B2C e-commerce retailer offering casual fashion products in the US.. TrendOne's mission is to provide quality fashion products from multiple brands with a personalized and easy shopping experience, optimizing retention through product recommendations, a loyalty program, and relevant automated emails.

TrendOne achieved 3900 total transactions and generated revenue approximately $233K. TrendOne has also introduced a subscription feature that provides special benefits to its customers. 
To increase the number of customers and transactions, the data analysis team is tasked with performing an analysis aimed at boosting sales revenue and developing effective marketing strategies. TrendOne also wants to understand how effective its advertisements are in increasing sales. This analysis will be very useful for various cross-functional teams and will be used as a basis for decision-making. The main insights will be divided s follows:

### :star: Northstar Metrics
* Sales Performance: 
  * Number of Transactions: The transaction volume
  * Average Order Value (AOV):  Average purchase amount each transaction
  * Sales Revenue: Total revenue generated
* Product Performance
  *	Revenue by Category: Revenue contribution per product category
  * Sales by Category: Number of products sold per category 
### :hammer_and_wrench: Supporting Metrics
* Seasonal Performance: 
  * Revenue by Season: Measuring the impact of seasonal factors on revenue
  * Sales by Season: Calculating total transactions per season
### :heart: Health Metrics
* Quality Performance:
  *	% Repeat Purchase: The percentage of repeat buyers or returning customers
  *	Average Review Rating: Average product rating across all products
  *	%  Subscribers: The ratio of subscribers to non-subscribers

# :mag_right: Observation
<table align="center">
  <tr>
    <th colspan="6">Sales Performance</th>
  </tr>
  <tr>
    <td align="center"; colspan="2">
      <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_number_of_transaction.jpg">
    </td>
    <td align="center"; colspan="2">
      <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_sales_revenue.jpg">
    </td>
    <td align="center"; colspan="2">
      <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_average_order_value.jpg">
    </td>
  </tr>
  <tr>
    <td valign="top" colspan="6">
    1. <b>Number of Transactions</b> reached a solid <b>3.9k</b>, which is a <b>healthy</b> indicator of purchasing activity.<br>
    2. The <b>Total Revenue</b> generated was <b>$233K</b> from <b>3.9K</b> transactions.<br>
    3. The overall <b>Average Order Value</b> is almost <b>$60</b>, with the <b>footwear</b> category leading at an average of <b>$60.26</b>, followed by the clothing category.<br>
    </td>
  </tr>
  <tr>
    <th colspan="6">Product Performance</th>
  </tr>
  <tr>
    <td align="center"; colspan="3">
       <img width="500px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_revenue_by_category.jpg">
    </td>
    <td align="center"; colspan="3">
      <img width="500px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_sales_by_category.jpg">
    </td>

  </tr>
  <tr>
    <td valign="top" colspan="6">
    1. The <b>highest revenue</b> came from the clothing sector, generating <b>$104K</b> of the total <b>$233K</b> revenue, meaning nearly half or precisely 45 of the revenue is from the clothing category.<br>
    2. The <b>highest number</b> of sales also came from the clothing sector, accounting for around <b>44%</b> of all sales.<br>
    </td>
  </tr>
  <tr>
    <th colspan="6">Seasonal Performance</th>
  </tr>
  <tr>
    <td align="center"; colspan="3">
      <img width="500px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_revenue_by_seasons.jpg">
    </td>
    <td align="center"; colspan="3">
      <img width="500px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_sales_by_seasons.jpg">
    </td>
  </tr>
  <tr>
    <td valign="top" colspan="6">
    1.	By season, <b>Fall</b> ranks first, contributing <b>$60K</b> in <b>revenue</b>, although the <b>difference</b> with other seasons is <b>not very significant</b>.<br>
    2.	The <b>number of transactions</b> across all <b>four seasons does not show a clear dominance</b>, with each season having <b>over 900</b> transactions.
    </td>
  </tr>
  <tr>
    <th colspan="6">Quality Performance</th>
  </tr>
  <tr>
    <td align="center"; colspan="2">
      <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_repeat_purchase_rate.jpg">
    </td>
    <td align="center"; colspan="2">
      <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_average_review_rating.jpg">
    </td>
    <td align="center"; colspan="2">
      <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_subscribers_percentage.jpg">
    </td>
  </tr>
  <tr>
    <td valign="top" colspan="6">
    1.	The <b>Repeat Purchase Rate</b> (or Returning Customer Percentage) is high at <b>89%</b>, indicating that <b>almost every customer</b> who has shopped at TrendOne is <b>likely to return</b>.<br>
    2.	The <b>Average Review Rating</b> is <b>3.75</b>, which can be considered <b>fairly good</b> or <b>average</b>.<br>
    3.	Only 27% of customers are subscribed to TrendOne’s loyalty program.
    </td>
  </tr>
</table>

<br>

# :microscope: Analysis
<table style="table-layout: fixed; width: 100%; align: center">
  <tr>
    <th colspan="6">Sales Performance</th>
  </tr>
  <tr>
    <td align="center"; colspan="2">
     <img width="150px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_south_filter.jpg">
     <img width="200px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_south_customers.jpg">
     <img width="150px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_west_filter.jpg">
     <img width="200px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_west_customers.jpg">
    </td>
    <td align="center"; colspan="2">
     <img width="150px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_south_filter.jpg">
     <img width="200px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_sales_revenue_south.jpg">
     <img width="150px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_west_filter.jpg">
     <img width="200px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_sales_revenue_west.jpg">
    </td>
    <td align="center"; colspan="2">
     <img width="150px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_footwear_filter.jpg">
     <img width="200px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_average_order_value_footwear.jpg">
     <img width="150px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_clothing_filter.jpg">
     <img width="200px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_average_order_value_clothing.jpg">
     <img width="150px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_filter_young_adult.jpg">
     <img width="200px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_aov_young_adult.jpg">
    </td>
  </tr>
  <tr>
    <td valign="top"; colspan="2"; style="overflow-wrap: break-word;">
     •	The total number of transactions reached 3.9K, indicating strong customer engagement and platform usage. This suggests that marketing efforts and promotional campaigns have been effective. Increasing transaction volume will likely contribute to both revenue growth and an increase in active customers. The customer demographic is male-dominated, with around 2,652 male customers. Regionally, the South and West areas contribute the largest customer segments, with 1,271 and 1,018 customers, respectively, highlighting these regions as key markets for TrendOne’s sales performance.
    </td>
    <td valign="top"; colspan="2"; style="overflow-wrap: break-word;">
     •	The company generated $233K in revenue from these 3.9K transactions, resulting in an Average Order Value (AOV) of around $60. The highest revenue came from the clothing and accessories categories, both of which play a key role in the company’s overall income. It is recommended that the company focus on these two popular categories while also improving sales in footwear and outerwear, which only contributed 15% and 8% of total transactions, respectively. The data also shows that customers living in the South and West regions made more purchases than other regions, with South contributing $75K and West $62K.
    </td>
    <td valign="top"; colspan="2"; style="overflow-wrap: break-word;">
     •	The Average Order Value stands at $60, with footwear leading slightly at $60.26, followed by clothing at $60.03. This indicates that high-value transactions are primarily driven by these two categories. The high AOV might be influenced by intrinsic factors (such as higher base prices for footwear and clothing) or behavioral factors (such as customers’ willingness to spend more for quality, brand perception, or exclusivity). The young adult age group tends to have a higher average order value compared to other age groups, at $60.45.
    </td>
  </tr>
  <tr>
    <th colspan="6">Product Performance</th>
  </tr>
  <tr>
    <td align="center"; colspan="3">
     <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_revenue_clothing.jpg">
     <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_revenue_accessories.jpg">
     <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_revenue_contributors.jpg">
    </td>
    <td align="center"; colspan="3">
     <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_sales_clothing.jpg">
     <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_sales_accessories.jpg">
     <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_sales_by_category.jpg">
    </td>
  </tr>
  <tr>
    <td valign="top"; colspan="3"; style="overflow-wrap: break-word;">
     •	The clothing category generated the highest revenue at $104K (45%), followed by accessories with $74K (32%). This highlights the dominance of these two categories, suggesting that the company should continue to focus on them while seeking to improve sales in footwear and outerwear.
    </td>
    <td valign="top"; colspan="3"; style="overflow-wrap: break-word;">
     • Similarly, the transaction volume aligns with revenue trends clothing accounts for 44% of total sales with 1,737 transactions, accessories for 30% with 1,240, footwear for 15% with 599, and outerwear for only 7% with 324. The company should consider implementing strategies to boost sales in the lower-performing categories.
    </td>
  </tr>
    <tr>
    <th colspan="6">Seasonal Performance</th>
  </tr>
  <tr>
    <td align="center"; colspan="3">
     <img width="250px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_revenue_seasons.jpg">
    </td>
    <td align="center"; colspan="3">
     <img width="250px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_sales_by_seasons.jpg">
    </td>
  </tr>
  <tr>
    <td valign="top"; colspan="3">
     •	The highest revenue was recorded in the fall season at $60K, although revenue across all four seasons remained relatively close. This indicates stable and consistent customer demand, meaning the business is not heavily dependent on seasonal changes. There are no extreme highs or lows, suggesting financial stability and reduced operational risks during potential low seasons.
    </td>
    <td valign="top"; colspan="3">
     •	The total number of sales also shows similar stability, with spring slightly leading at 999 transactions, reinforcing the idea that sales performance is balanced throughout the year.
    </td>
  </tr>
    <tr>
    <th colspan="6">Quality Performance</th>
  </tr>
  <tr>
    <td align="center"; colspan="2">
      <img width="250px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_repeat_purchase_rate.jpg">
    </td>
    <td align="center"; colspan="2">
      <img width="250px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_average_review_rating.jpg">
    </td>
    <td align="center"; colspan="2">
      <img width="250px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_subscribers_percentage.jpg">
    </td>
  </tr>
  <tr>
    <td valign="top"; colspan="2">
     •	The Repeat Purchase Rate stands at an impressive 89%, indicating a strong customer retention rate. Many customers make repeat purchases after shopping multiple times at TrendOne, showing high levels of loyalty and satisfaction. This could be driven by platform convenience, attractive discounts, excellent after-sales service, or effective marketing strategies.
    </td>
    <td valign="top"; colspan="2">
     •	The Average Review Rating is 3.75, which can be considered fairly good, though not outstanding. Despite the average rating, the high repeat purchase rate suggests either high customer loyalty or a strong product need, meaning further analysis is needed to understand why satisfaction scores remain moderate. There is still room for improvement.
    </td>
    <td valign="top"; colspan="2">
     •	27% of total customers are subscribed to TrendOne’s loyalty program. Increasing the number of subscribers could further strengthen customer retention and boost repeat purchases, as loyal members are more likely to stay engaged with the platform. It was also found that no female customers subscribed to the loyalty program. The entire 27% of total subscribers came exclusively from male customers.
    </td>
  </tr>
</table>

<br>

# :rocket: Recommendation
<table align="center">
<tr>
  <th>Sales Performance</th>
</tr>
<tr>
  <td>
   •	Consider conducting time-based and category-based analysis to identify high-potential product categories and cross-selling opportunities. You can also implement promotions such as “Buy 2, Get a Discount” for best-selling products while improving visibility for underperforming ones. <br>
   •	Increasing the number of customers will naturally boost transactions and overall revenue. Since customer engagement in the Midwest and Northeast regions is relatively low, the marketing team should launch targeted campaigns in these areas to attract new customers. <br>
   •	At the same time, localized promotions in the South and West regions where the customer base is already strong, can help strengthen loyalty and further drive sales growth. Given the higher average order value among young adults, the company could leverage this segment for targeted marketing campaigns or introduce subscription-based offers, as this group shows greater spending potential compared to other age groups.
  </td>
</tr>
<tr>
  <th>Product Performance</th>
</tr>
<tr>
  <td>
   •	The clothing category contributes 45% of revenue and 44% of total transactions, while accessories account for 32% of revenue and 30% of transactions. The company should maintain focus on these two key categories while exploring growth opportunities in others.<br>
   •	For footwear and outerwear, review the pricing and promotional strategies to improve their performance. Implement category-specific marketing campaigns such as bundle offers or best-seller highlights to increase awareness and drive conversions in underperforming segments.<br>
  </td>
</tr>
<tr>
  <th>Seasonal Performance</th>
</tr>
<tr>
  <td>
   •	Revenue and transaction levels show healthy stability, indicating that the business is not strongly affected by seasonality. This stability allows for better revenue and inventory forecasting throughout the year.<br>
   •	Maintain consistent stock availability and evenly distributed promotions across all seasons. For growth strategies, consider launching creative seasonal campaigns to maximize revenue during specific seasons without disrupting operational balance or stability.
  </td>
</tr>
<tr>
  <th>Quality Performance</th>
</tr>
<tr>
  <td>
   •	Continue maintaining strong customer experience, service quality, and attractive promotions. Conduct further analysis to identify key drivers of customer loyalty, so they can be replicated to attract and retain new customers.<br>
   •	Improve product and service quality (such as customer service, shipping speed, and packaging) to enhance the Average Review Rating. Higher ratings can strengthen customer acquisition and brand reputation.<br>
   •	Focus on increasing loyalty program subscribers by offering clear and valuable benefits such as exclusive discounts, early access to new collections, or loyalty points. This will help boost retention rates and encourage more repeat purchases.
  • Female customers should be specifically targeted to increase subscription rates, as none of them have currently subscribed. The company could consider offering subscription plans or incentives that appeal more to female customers.
  </td>
</tr>
</table>


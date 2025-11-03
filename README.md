# :pushpin: TrendOne Co. Customer Behavior Analysis
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

<br><br>

# :microscope: Analysis
<table align="center">
  <tr>
    <th colspan="6">Analysis</th>
  </tr>
  <tr>
    <td colspan="6">Sales Performance</td>
  </tr>
  <tr>
    <td align="center"; colspan="2">
     <img width="200px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_south_filter.jpg">
     <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_south_customers.jpg">
     <img width="200px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_west_filter.jpg">
     <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_west_customers.jpg">
    </td>
    <td align="center"; colspan="2">
     <img width="200px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_south_filter.jpg">
     <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_sales_revenue_south.jpg">
     <img width="200px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_west_filter.jpg">
     <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_sales_revenue_west.jpg">
    </td>
    <td align="center"; colspan="2">
     <img width="200px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_footwear_filter.jpg">
     <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_average_order_value_footwear.jpg">
     <img width="200px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_clothing_filter.jpg">
     <img width="300px"; src="https://github.com/nigelalessan/trendone_customer_behavior_analysis/blob/main/docs/img/img_average_order_value_clothing.jpg">     
    </td>
  </tr>
  <tr>
    <td valign="top"; colspan="2">
     •	The total number of transactions reached 3.9K, indicating strong customer engagement and platform usage. This suggests that marketing efforts and 
     promotional campaigns have been effective. Increasing transaction volume will likely contribute to both revenue growth and an increase in active 
     customers. The customer demographic is male-dominated, with around 2,652 male customers. Regionally, the South and West areas contribute the largest 
     customer segments, with 1,271 and 1,018 customers, respectively, highlighting these regions as key markets for TrendOne’s sales performance.
    </td>
    <td valign="top"; colspan="2">
     •	The company generated $233K in revenue from these 3.9K transactions, resulting in an Average Order Value (AOV) of around $60. The highest revenue 
     came from the clothing and accessories categories, both of which play a key role in the company’s overall income. It is recommended that the company 
     focus on these two popular categories while also improving sales in footwear and outerwear, which only contributed 15% and 8% of total transactions, 
     respectively. The data also shows that customers living in the South and West regions made more purchases than other regions, with South contributing 
     $75K and West $62K.
    </td>
    <td valign="top"; colspan="2">
     •	The Average Order Value stands at $60, with footwear leading slightly at $60.26, followed by clothing at $60.03. This indicates that high-value 
     transactions are primarily driven by these two categories. The high AOV might be influenced by intrinsic factors (such as higher base prices for 
     footwear and clothing) or behavioral factors (such as customers’ willingness to spend more for quality, brand perception, or exclusivity).
    </td>
  </tr>
  <tr>
    <td colspan="6">Product Performance</td>
  </tr>
  <tr>
    <td colspan="3">
     <img>
    </td>
    <td colspan="3">
     <img>
    </td>
  </tr>
  <tr>
    <td valign="top"; colspan="3">
      •	The clothing category generated the highest revenue at $104K (45%), followed by accessories with $74K (32%). This highlights the dominance of 
     these two categories, suggesting that the company should continue to focus on them while seeking to improve sales in footwear and outerwear.
    </td>
    <td valign="top"; colspan="3">
     •	Similarly, transaction volume aligns with revenue trends — clothing accounts for 44% of all sales, accessories for 30%, footwear for 15%, and 
     outerwear for only 7%. The company should consider strategies to boost sales in the lower-performing categories.
    </td>
  </tr>
    <tr>
    <td colspan="6">Seasonal Performance</td>
  </tr>
  <tr>
    <td colspan="6">
    <img>
    <img>
    <img>
    <img>
    <img>
    </td>
  </tr>
  <tr>
    <td valign="top"; colspan="2">a</td>
    <td valign="top"; colspan="2">b</td>
    <td valign="top"; colspan="2">c</td>
  </tr>
    <tr>
    <td colspan="6">Quality Performance</td>
  </tr>
  <tr>
    <td colspan="6">
    <img>
    <img>
    <img>
    <img>
    <img>
    </td>
  </tr>
  <tr>
    <td valign="top"; colspan="2">a</td>
    <td valign="top"; colspan="2">b</td>
    <td valign="top"; colspan="2">c</td>
  </tr>
</table>


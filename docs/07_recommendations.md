# Business Recommendations

## ***Recommendation 1: Investigate the Subscription and Discount Relationship***

**Supporting finding:** Subscription status is strongly associated with discount usage in the available dataset.

**Recommended action:** Validate the relationship against the source data and business rules before using it to inform promotional policy.

**Business rationale:** Understanding whether discount eligibility is linked to subscription status is necessary before evaluating the role of promotions in subscription acquisition.

**Required data:** Subscription eligibility, promotion rules, discount costs, conversion outcomes, and contribution margin.

**Success measures:** Subscription conversion rate, discount cost, and contribution margin, evaluated against a defined baseline.

**Limitation:** The current analysis establishes an association, not a causal effect.

## ***Recommendation 2: Avoid Single Variable Customer Value Classification***

**Supporting finding:** The tested customer characteristics did not provide strong evidence of differences in recorded purchase amount.

**Recommended action:** Avoid classifying customers as high value based solely on age, gender, subscription status, or previous purchase count.

**Business rationale:** A broader set of validated behavioral and financial measures may better support customer value assessment.

**Required data:** Transaction history, transaction dates, purchase frequency over a defined period, and margin data.

**Success measures:** The ability of the revised approach to distinguish customer groups by a clearly defined business outcome.

## ***Recommendation 3: Validate the Business Usefulness of Customer Segments***

**Supporting finding:** The six-cluster solution produces groups of relatively balanced size, but the observed cluster separation is limited.

**Recommended action:** Review cluster profiles and test whether any proposed segment-specific action produces measurable improvement before scaling it.

**Business rationale:** Segments should support practical decisions rather than exist solely as model outputs.

**Required data:** Customer-level outcomes, campaign exposure, conversion, and financial performance.

**Success measures:** Incremental conversion or contribution margin compared with an appropriate baseline or control group.

**Limitation:** The current dataset does not establish campaign effectiveness, customer retention, or profitability.

## ***Recommendation 4: Strengthen Transaction Level Data Availability***

**Supporting limitation:** The available dataset lacks reliable transaction timestamps and sufficient financial detail for time-based retention and profitability analysis.

**Recommended action:** Establish a transaction level data foundation with customer identifiers, transaction timestamps, quantities, prices, discounts, and relevant costs.

**Business rationale:** These fields are necessary for reliable cohort, repeat-purchase, customer lifetime value, and promotional effectiveness analysis.

**Success measures:** Data completeness, identifier integrity, and the ability to reproduce defined transaction and customer metrics.

**Limitation:** These analyses cannot be completed reliably using the current dataset alone.
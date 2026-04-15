# Alumni Network Analysis Based on LinkedIn Data: A Comparative Study of Hong Kong and Singapore

## Abstract

Global cities such as Hong Kong and Singapore are major hubs for international education and employment, yet systematic comparative analyses of their alumni networks are rare.  This study uses audience‐size estimates from LinkedIn’s advertising platform to examine the geography of alumni flows from universities in Hong Kong (HK) and Singapore (SG).  After compiling a list of universities and countries, we merge their LinkedIn audience sizes to produce a dataset of alumni counts by school and destination.  Descriptive statistics, bar charts, world maps and chord diagrams reveal the main destinations and patterns of dispersion.  A directed network is constructed to examine degree and betweenness centrality, and a gravity‑type regression model is proposed to explain alumni flows using school characteristics and geographic factors.  We discuss ethical and representativeness issues in using digital trace data and outline directions for future research.

## 1 Introduction

Migration of highly skilled workers and students contributes to the global circulation of human capital and shapes innovation and economic growth.  Global cities like Hong Kong and Singapore act as sources of talented graduates and as destinations for international students, making their alumni networks an important object of study.  Digital platforms offer new ways to observe these networks.  Social media now has billions of users and records of online interactions leave “digital trace” data【166941684245202†L134-L156】.  However, while social media data provide unprecedented scale, they are not representative of the entire population; researchers must recognize that users on a particular platform may differ systematically from the populations they are assumed to represent【166941684245202†L157-L170】.  This research uses LinkedIn’s advertising audience estimates to examine alumni flows from HK and SG universities.  The contributions of this study are fourfold:

1. **Data acquisition:**  We compile a unique dataset of alumni counts by university and destination country using the LinkedIn advertising platform and lists of universities and countries.  
2. **Descriptive analysis:**  We visualize the distribution of alumni across destinations using scatter plots, bar charts, world maps and chord diagrams.  
3. **Network analysis:**  A directed network of alumni flows is created, and degree and betweenness centrality metrics are compared for HK and SG.  
4. **Regression modelling:**  We propose a gravity‑type regression framework linking alumni flows to university characteristics and geographic factors.

The paper also reflects on the ethical and legal challenges of using LinkedIn data and highlights the limitations of digital trace data for inference.

## 2 Data Acquisition and Ethics

### 2.1 Data collection

The project draws on LinkedIn’s advertising platform, which allows advertisers to estimate the size of audiences meeting specific criteria.  By selecting a university (e.g., University of Hong Kong) and a location (e.g., United States) as audience filters, the platform returns the estimated number of LinkedIn members who list that school and live in the specified location.  These estimates form the core of our dataset.  A list of target schools is assembled from international university rankings (such as the QS Rankings), and a list of destination countries is compiled using global development indices or known patterns of graduate migration【706176988785819†L247-L284】.  After merging the school and country lists, we generate a matrix of audience sizes for each school–destination pair.  The LinkedIn data are self‑reported, and the audience sizes represent active LinkedIn users who have listed a given university.  Thus, they are proxies for the actual alumni population【706176988785819†L247-L263】.

### 2.2 Data representativeness and bias

Digital trace data are abundant but often non‑representative.  Scholars note that social media users differ from the general population and that self‑selection can produce biased estimates【166941684245202†L157-L170】.  LinkedIn membership skews toward professionals and may under‑represent older alumni, those who do not maintain online profiles or people in regions with limited internet access.  Consequently, the audience sizes used in this study are indicative rather than definitive.  Future research should compare these estimates with administrative data and adjust for demographic biases.

### 2.3 Ethical and legal considerations

Scraping LinkedIn data raises legal and ethical issues.  A recent review notes that LinkedIn’s large user base provides a rich corpus for research but emphasizes that scraping public profiles is subject to platform restrictions and privacy laws.  The review argues that scraping is often the most comprehensive method for acquiring data, yet researchers must navigate prohibitive measures and legal uncertainties; recent court cases suggest that scraping public profiles may be lawful, but compliance with evolving privacy laws is essential【599872541620135†L103-L116】.  Ethical strategies include collecting only necessary data, avoiding personal identifiers, and following “terms of service” guidelines.  Our study uses aggregated audience counts rather than individual profiles, which mitigates privacy risks.

## 3 Descriptive Data Analysis

### 3.1 Scatter and bar charts

The dataset allows visual comparison of alumni flows from HK and SG.  Scatter plots (not reproduced here) compare the ratios of HK and SG alumni across destinations after excluding extreme values (notably the United States) to improve readability【706176988785819†L293-L303】.  Bar charts show normalized percentages of alumni by destination【706176988785819†L320-L336】.  Key findings include:

- The **United States** is the dominant destination for alumni from both regions; 41.4 % of HK alumni and 53.3 % of SG alumni choose the U.S.【706176988785819†L320-L326】.  This underscores the continuing pull of U.S. higher education and labor markets.  
- The **United Kingdom** attracts 12.9 % of HK alumni but only 4.4 % of SG alumni, reflecting historical ties and familiarity with British institutions【706176988785819†L327-L329】.  
- **Mainland China** accounts for 8.7 % of HK alumni versus 2.8 % of SG alumni, indicating stronger HK–mainland links【706176988785819†L330-L332】.  
- HK and SG send alumni to each other; HK sends 4.1 % of its alumni to SG while only 3.1 % of SG alumni choose HK【706176988785819†L333-L335】.  

Normalized percentages rather than raw counts allow comparison despite different total alumni numbers【706176988785819†L339-L341】.

### 3.2 World map analysis

World maps depicting log‐scaled alumni counts reveal spatial differences.  Both HK and SG send large numbers of alumni to the United States【706176988785819†L351-L352】.  SG alumni are more widely dispersed; they appear in a greater number of African countries, whereas HK alumni are concentrated in fewer destinations【706176988785819†L351-L353】.  HK alumni display stronger connections to mainland China (darker colours on the map), while SG alumni show stronger ties to India【706176988785819†L353-L357】.  These patterns reflect historical, linguistic and economic relationships.

### 3.3 Chord diagrams

Chord diagrams (interactive visualizations) illustrate flows between schools and destination regions.  Points (nodes) represent schools or regions and are sized by alumni counts; lines represent alumni flows and are weighted by the number of alumni【706176988785819†L363-L369】.  Colours indicate the classification of schools or countries (e.g., by continent).  Comparing diagrams for HK and SG reveals differences in the concentration and distribution of flows.  Because chord diagrams group destinations by region, they highlight whether alumni flows are concentrated in a few regions or more evenly spread【706176988785819†L370-L373】.

## 4 Network Analysis

### 4.1 Constructing the network

A directed network is constructed where each node is a location (HK or SG as origins and destination countries) and edges represent alumni flows from origin to destination.  Edge weights correspond to the number of alumni.  Node‑level statistics such as degree (number of connections) and betweenness centrality (a measure of brokerage) are computed.  In network analysis, **degree centrality** counts the number of connections a node has; for directed networks, **in‑degree** counts incoming connections and **out‑degree** counts outgoing connections【281682627997472†L116-L124】.  **Betweenness centrality** measures the extent to which a node connects other nodes that would otherwise be unconnected【281682627997472†L131-L139】.  Nodes with high betweenness can control the flow of information or resources across the network.

### 4.2 Centrality measures for HK and SG

The network analysis compares HK and SG across several metrics (Table 1).  HK has an out‑degree of 35, meaning its alumni flow to 35 destination countries; SG has a larger out‑degree of 43【706176988785819†L392-L399】.  Both cities have an in‑degree of 1, indicating that they receive alumni only from each other【706176988785819†L392-L399】.  Weighted degrees show that SG sends more alumni overall (444,480) than HK (398,260) and that SG receives more alumni (16,320) than HK (14,000)【706176988785819†L399-L404】.  Betweenness centrality is also higher for SG (0.0063) than for HK (0.0019)【706176988785819†L406-L409】, suggesting SG acts as a more prominent broker in the alumni network.  These metrics indicate that SG’s alumni network is broader and more influential.

**Table 1 – Network statistics for Hong Kong and Singapore alumni networks**

| Metric | Hong Kong | Singapore | Interpretation |
|---|---|---|---|
| Out‑degree (number of destinations) | 35【706176988785819†L392-L399】 | 43【706176988785819†L392-L399】 | SG alumni migrate to more destinations than HK alumni |
| In‑degree (number of origins) | 1【706176988785819†L392-L399】 | 1【706176988785819†L392-L399】 | Both cities receive alumni only from each other |
| Weighted out‑degree (total alumni sent) | 398,260【706176988785819†L399-L404】 | 444,480【706176988785819†L399-L404】 | SG sends more alumni than HK |
| Weighted in‑degree (total alumni received) | 14,000【706176988785819†L399-L404】 | 16,320【706176988785819†L399-L404】 | SG attracts slightly more alumni from HK |
| Betweenness centrality | 0.0019【706176988785819†L406-L409】 | 0.0063【706176988785819†L406-L409】 | SG plays a bigger brokerage role |

### 4.3 Interpretation

The centrality differences suggest that SG’s alumni network is more diversified.  Its higher out‑degree indicates that SG universities have graduates in more countries, consistent with SG’s role as a global education hub.  HK also sends alumni to many destinations, but its network is slightly less extensive.  The equal in‑degrees reflect data limitations—our dataset includes only HK and SG as origins—so both appear to receive alumni from one source.  Weighted degrees show that SG sends and receives more alumni in absolute terms, while betweenness centrality indicates that SG occupies more strategic positions in the network.  According to the definitions of in‑ and out‑degree and betweenness centrality【281682627997472†L116-L139】, SG’s high betweenness means it connects otherwise unconnected nodes (destinations), underscoring its role as a bridge in the alumni network.

## 5 Regression Model: A Gravity‑Type Approach

### 5.1 The gravity model

Gravity models are widely used to explain bilateral flows of goods, people and information.  The central assumption is that flows between two locations are **proportional to the product of their sizes (e.g., populations)** and **inversely proportional to the distance between them**【213195377629680†L124-L133】.  The model can be augmented with socioeconomic variables such as GDP per capita, demographic factors and existing migrant stocks【213195377629680†L124-L134】.  Gravity models have a solid theoretical foundation in random‑utility maximization, which posits that individuals choose a destination that maximizes their utility, accounting for costs and benefits【213195377629680†L145-L156】.  Studies have shown that gravity models perform well in explaining spatial patterns of migration but may struggle with temporal dynamics【213195377629680†L244-L250】.

### 5.2 Applying gravity to alumni flows

In this project we plan to apply a gravity‑type regression model to understand how university characteristics and geographic factors shape alumni flows.  The dependent variable will be the (log) number of alumni from university _i_ in country _j_.  Independent variables will include:

- **University size:** the number of enrolled students or alumni, approximated by ranking data【706176988785819†L453-L459】.  Larger institutions are expected to send more graduates abroad.  
- **Financial resources:** proxy by university endowment or research income【706176988785819†L453-L459】.  Well‑resourced universities may offer more scholarships and exchange programs, increasing outflows.  
- **University location:** categorical variables for whether the university is in HK or SG.  
- **Destination characteristics:** population size, GDP per capita, human development index and language similarity.  
- **Geodesic distance:** log of the distance between the university’s location and the destination country.  

A Poisson or negative binomial regression will handle count data and overdispersion.  Fixed effects for origins (university) and destinations can control for unobserved heterogeneity.  Interaction terms may capture differences between HK and SG universities.

### 5.3 Expected findings

Based on gravity theory and descriptive patterns, we expect that larger and better‑funded universities will send more alumni abroad.  Distance should have a negative effect—graduates are more likely to go to geographically closer destinations—but the effect may be moderated by colonial history and language.  For example, HK’s colonial ties to the UK and SG’s ties to India and Malaysia could offset distance effects.  Additionally, destinations with larger populations and stronger economies (e.g., the U.S.) will attract more alumni.  A gravity model will provide a formal statistical test of these hypotheses and could be used to forecast future alumni flows.

## 6 Discussion

### 6.1 Data limitations

While LinkedIn advertising data offer unique insights, they suffer from **non‑representativeness**【166941684245202†L157-L170】.  Only LinkedIn users who report their alma mater and current location are captured; offline alumni and those on other platforms are excluded.  Differences in platform adoption rates across countries may exaggerate flows to certain destinations.  The self‑reported nature of the data introduces errors and may overstate international mobility.  The network analysis also reflects the dataset’s structure; the in‑degree of both HK and SG is 1 because only flows between the two are recorded, not because no other regions send alumni to them.  Future research should combine LinkedIn data with university records and surveys to validate counts and adjust for biases.

### 6.2 Policy implications

The analysis highlights the **dominant role of the United States** in attracting graduates from both HK and SG, suggesting that U.S. universities and employers remain attractive despite rising competition.  The **United Kingdom** continues to appeal particularly to HK graduates due to historical ties【706176988785819†L327-L329】.  Mainland China is a significant destination for HK alumni but less so for SG alumni【706176988785819†L330-L332】, reflecting differences in regional integration.  The broader dispersal of SG alumni, including into Africa and India, may result from SG universities’ emphasis on global mobility and diverse partnerships【706176988785819†L351-L357】.  Universities and policymakers in HK and SG can use these insights to tailor alumni engagement strategies, develop targeted scholarship programs and strengthen partnerships with emerging destinations.  Understanding network centrality can help universities identify strategic regions where alumni communities could serve as bridges for collaboration and recruitment.

### 6.3 Future work

Several avenues remain open.  First, implementing the proposed gravity model will quantify the importance of university and destination characteristics.  Second, expanding the dataset to include additional origins (e.g., universities from other Asian cities) would provide a more complete network and yield meaningful in‑degree measurements.  Third, temporal analysis using annual snapshots of LinkedIn audience sizes could reveal trends in alumni mobility and test the stability of destinations.  Finally, integrating qualitative data—interviews with alumni or universities—could illuminate factors such as cultural preferences, scholarship availability and career prospects that are not captured in quantitative models.

## 7 Conclusion

This study demonstrates how LinkedIn advertising data can be used to map and analyze alumni networks from Hong Kong and Singapore.  By compiling audience size estimates for universities and destinations, we identify the United States, United Kingdom and mainland China as key destinations and show that Singapore’s alumni network is more diversified than Hong Kong’s.  Network analysis reveals that SG has a higher out‑degree and betweenness centrality, indicating a broader and more influential alumni network.  We propose a gravity‑type regression model that links alumni flows to university characteristics and geographic factors.  Despite limitations related to data representativeness and ethics, the results provide useful insights for universities and policymakers and suggest directions for future research.

## Appendix: Visualization
https://github.com/Swanshi123/capstone
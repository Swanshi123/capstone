# Alumni network analysis based on LinkedIn data

## Data acquisition

### LinkedIn advertising platform
LinkedIn advertising platform provides an entry point to determine information based on tags. Different audience sizes will be output based on different tags on the LinkedIn advertising platform. Therefore, we can determine the number of alumni in the destination based on school data and location.
- Points to note:
1. This is self-reported data
2. Data representativeness issues

![school_representativeness_academic](https://github.com/user-attachments/assets/53defbe0-8f44-46d0-96da-db24e803dd4b)

4. Data ethics issues（Please cite relevant literature）
5. Data acquisition process (api and manual)
- refer to:https://github.com/Swanshi123/LinkedinADFunction

### School data list
- Target schools can be determined based on the university ranking list (QS)
- Used to connect school indicators in regression analysis

### Country data list
- Country list determined based on the global development index or the destination outflow population location
- Used to link national indicators in regression analysis

### Merge data
Merge the above two databases to obtain the final data.
The final data format is the alumni size of the school in a certain area under the school classification. 
- (For example, the scale of alumni of the University of Hong Kong in Japan)


## Data analysis

### Descriptive data analysis
1. Pie Chart
- The proportion of alumni inflow from different regions can be analyzed through pie charts
- （Total number of Hong Kong alumni vs. Total number of Singapore alumni）
2.Bar charts
- can be used for comparative analysis to analyze the scale of inflow from different regions
- For the target countries, we can answer questions about the destinations with the most alumni inflows. 
- For the flow process, we can answer descriptive and comparative analysis of the flow patterns of alumni in the two places.

![alumni_destination_comparison](https://github.com/user-attachments/assets/46807b20-106b-4e3b-a1e0-b338d337db86)

*Describe*

The bar chart shows the distribution of Hong Kong and Singapore alumni in major study abroad destinations around the world, measured by their share of the total number of alumni.
- The United States is the most popular study abroad destination for both regions, with 41.4% of Hong Kong alumni and 53.3% of Singapore alumni choosing the United States. This highlights the continued dominance of the United States as a hub for higher education and employment for graduates in East Asia.
- ​​The United Kingdom is particularly popular with Hong Kong alumni (12.9%), more than twice the number of Singapore alumni (4.4%), reflecting the UK's colonial history with Hong Kong and familiarity with British institutions.
- Mainland China: Hong Kong alumni account for 8.7% of the total, while Singapore alumni account for 2.8%, indicating a higher dependence between Hong Kong and mainland China. (Taught postgraduates return to mainland employment)
- Hong Kong and Singapore appear in each other's top ten alumni, but in different proportions. In general, more Hong Kong alumni go to Singapore (4.1%), while fewer Singaporean alumni choose Hong Kong (3.1%)

*Caption*

- The bar chart reflects normalized percentages, not raw alumni numbers, so the two regions with different total alumni numbers are comparable.
- The color scheme reflects symbolic regional characteristics (red for Hong Kong and neutral dark colors for Singapore).


### World Map
[Dynamic Maps](https://swanshi123.github.io/capstone--htmlpr/global_alumni_world_map_log1.html)
![全球校友log人数（不包含港澳台）](https://github.com/user-attachments/assets/e756a4c9-afe9-49f6-ac17-ecb32f95785d)
![香港校友log人数(不包含港澳台）](https://github.com/user-attachments/assets/a1500be6-b5c3-4316-ac70-28a7702eda00)
![新加坡log校友人数（不含港澳台）](https://github.com/user-attachments/assets/e0ea365c-907e-403a-8be2-44c1710d97e1)

From the map,
- The United States is a common destination
- Singapore alumni are more widely distributed (in Africa), and Hong Kong alumni are distributed in fewer regions than Singapore
- Hong Kong alumni are more closely connected to mainland China (darker colors)
- Singapore is more closely connected to India, and Hong Kong is more closely connected to the United Kingdom


### chord diagrams
![region](https://github.com/user-attachments/assets/4cdbc101-27b0-440b-a976-03e9cf42f6e0)

![continets](https://github.com/user-attachments/assets/958b146f-ca3c-4a48-9a81-d0c7193b712e)


1. Summarize and analyze the data obtained above. The scale of alumni inflow from different regions and the scale of alumni of different schools themselves are obtained.
2. Take schools and regions as points and determine the size of points according to quantity
3. Take school to region as a line and determine the thickness of the line according to the number of floating population
4. Classify schools and regions according to color
5. Classify countries according to color
6. The contrast between the two chord diagrams lies in the division of countries into continents.


### Network analysis
[Dynamic network](https://swanshi123.github.io/capstone--htmlpr/alumni_network_visualization_new2.html)


![image](https://github.com/user-attachments/assets/09abf1b7-1cac-4890-8f99-882622671347)

1.Constructing a network graph
- source: departure point
- target: destination
- count: the number of alumni flowing from the departure point to the destination
- Construct a directed graph from the departure point to the destination
- Calculate the in-degree and out-degree of Hong Kong and Singapore
- Calculate the degree centrality of Hong Kong and Singapore, and give an academic explanation.

2.Comparison of in-degree and out-degree
Comparison of Hong Kong and Singapore:
- Hong Kong - Out Degree: 35
- Singapore - Out Degree: 43
- Hong Kong - in Degree: 1
- Singapore - in Degree: 1

3.Comparison of weighted in-degree and out-degree
- Hong Kong - Weighted Out Degree (Total Alumni Sent): 398260
- Singapore - Weighted Out Degree (Total Alumni Sent): 444480
- Hong Kong - Weighted in Degree (Total Alumni receive): 14000
- Singapore - Weighted in Degree (Total Alumni receive): 16320

4.Comparison of centrality
- Hong Kong - Betweenness Centrality: 0.0019
- Singapore - Betweenness Centrality: 0.0063

5.Academic explanation

5.1 Out-degree and In-degree
In network analysis, a directed graph simulates the migration of Hong Kong and Singapore alumni to various countries, where edges represent flow directions and nodes represent countries. In-degree and out-degree provide insights into the roles of Hong Kong and Singapore in the network.
- Hong Kong:
1. Out-degree (35): indicates that Hong Kong is an important source of alumni, sending graduates to 35 different countries. Such a high out-degree reflects its wide international influence, with a large number of alumni flowing to the United States
2. In-degree (1): indicates that Hong Kong only receives alumni from Singapore
- Singapore:
1. Out-degree (43): shows that its influence is even wider, with alumni flowing to 43 countries including Hong Kong. This exceeds Hong Kong's out-degree, indicating that alumni destinations are more diversified, with a large number of alumni flowing to the United States (236,800 people)
2. In-degree (1): indicates that Singapore receives alumni from Hong Kong.

5.2 Outdegree centrality
- total 45
- Outdegree centrality: Singapore’s higher outdegree (43 vs. 35) suggests that it is more active or influential in global alumni communication, which may be due to the international reputation of its universities or mobility programs. Hong Kong also shows strong outbound connectivity, although with fewer destinations.
- Indegree centrality: Both nodes have an indegree of 1, reflecting two-way communication (Hong Kong to Singapore and vice versa), but in this dataset, only two-way flows are reflected because the data sources are limited to Hong Kong and Singapore. Two-way flows (Singapore to Hong Kong: 14,000; Hong Kong to Singapore: 16,320) highlight regional connections, which may be driven by proximity or economic ties. Singapore’s broader outbound influence may indicate that its alumni network is more global.



### Causal inference
We are currently preparing to use the gravity model to explore the relationship between school characteristics and the population size of the destination.
For example:
- Size of the university
- Amount of financial support received by the university
- Location of the university

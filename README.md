# Alumni network analysis based on LinkedIn data

## Data acquisition

### LinkedIn advertising platform
LinkedIn advertising platform provides an entry point to determine information based on tags. Different audience sizes will be output based on different tags on the LinkedIn advertising platform. Therefore, we can determine the number of alumni in the destination based on school data and location.
- Points to note:
1. This is self-reported data
2. Data representativeness issues

![school_representativeness_academic](https://github.com/user-attachments/assets/53defbe0-8f44-46d0-96da-db24e803dd4b)

*Describe*
The bar chart shows the distribution of Hong Kong and Singapore alumni in major study abroad destinations around the world, measured by their share of the total number of alumni.
- The United States is the most popular study abroad destination for both regions, with 41.4% of Hong Kong alumni and 53.3% of Singapore alumni choosing the United States. This highlights the continued dominance of the United States as a hub for higher education and employment for graduates in East Asia.
- ​​The United Kingdom is particularly popular with Hong Kong alumni (12.9%), more than twice the number of Singapore alumni (4.4%), reflecting the UK's colonial history with Hong Kong and familiarity with British institutions.
- Mainland China: Hong Kong alumni account for 8.7% of the total, while Singapore alumni account for 2.8%, indicating a higher dependence between Hong Kong and mainland China. (Taught postgraduates return to mainland employment)
- Hong Kong and Singapore appear in each other's top ten alumni, but in different proportions. In general, more Hong Kong alumni go to Singapore (4.1%), while fewer Singaporean alumni choose Hong Kong (3.1%)

*Caption*
- The bar chart reflects normalized percentages, not raw alumni numbers, so the two regions with different total alumni numbers are comparable.
- The color scheme reflects symbolic regional characteristics (red for Hong Kong and neutral dark colors for Singapore).

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


### World Map
Chord diagrams can be used for very comprehensive analysis

### chord diagrams
![region](https://github.com/user-attachments/assets/4cdbc101-27b0-440b-a976-03e9cf42f6e0)

1. Summarize and analyze the data obtained above. The scale of alumni inflow from different regions and the scale of alumni of different schools themselves are obtained.
2. Take schools and regions as points and determine the size of points according to quantity
3. Take school to region as a line and determine the thickness of the line according to the number of floating population
4. Classify schools and regions according to color
5. Classify countries according to color
6. The contrast between the two chord diagrams lies in the division of countries into continents.


### Network analysis
1.Constructing a network graph
2.Comparison of in-degree and out-degree
3.Comparison of weighted in-degree and out-degree
4.Comparison of centrality


### Causal inference
We are currently preparing to use the gravity model to explore the relationship between school characteristics and the population size of the destination.
For example:
- Size of the university
- Amount of financial support received by the university
- Location of the university

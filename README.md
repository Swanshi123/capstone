# Alumni network analysis based on LinkedIn data
## Data acquisition
### LinkedIn advertising platform
LinkedIn advertising platform provides an entry point to determine information based on tags. Different audience sizes will be output based on different tags on the LinkedIn advertising platform. Therefore, we can determine the number of alumni in the destination based on school data and location.
- Points to note:
1. This is self-reported data
2. Data representativeness issues
3. Data ethics issues
4. Data acquisition process (api and manual)
- refer to:https://github.com/Swanshi123/LinkedinADFunction
### School data
- Target schools can be determined based on the university ranking list (QS)
- Country list determined based on the global development index or the destination outflow population location
### Merge data
Merge the above two databases to obtain the final data.
The final data format is the alumni size of the school in a certain area under the school classification. 
- (For example, the scale of alumni of the University of Hong Kong in Japan)

## Data analysis
### Descriptive data analysis
The proportion of alumni inflow from different regions can be analyzed through pie charts
Bar charts can be used for comparative analysis to analyze the scale of inflow from different regions
- For the target countries, we can answer questions about the destinations with the most alumni inflows. 
- For the flow process, we can answer descriptive and comparative analysis of the flow patterns of alumni in the two places.
### Visual animation
Chord diagrams can be used for very comprehensive analysis
#### Analysis process of chord diagrams
1. Summarize and analyze the data obtained above. The scale of alumni inflow from different regions and the scale of alumni of different schools themselves are obtained.
2. Take schools and regions as points and determine the size of points according to quantity
3. Take school to region as a line and determine the thickness of the line according to the number of floating population
4. Classify schools and regions according to color
5. Classify countries according to color
### Causal inference
We are currently preparing to use the gravity model to explore the relationship between school characteristics and the population size of the destination.
For example:
- Size of the university
- Amount of financial support received by the university
- Location of the university

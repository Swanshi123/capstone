# Load required libraries
library(readxl)
library(ggplot2)

# Read the Excel file
# Ensure 'scatter plot.xlsx' is the correct file path
data <- read_excel("scatter plot.xlsx")

# Create the scatter plot using ggplot2
p <- ggplot(data, aes(x = `students number`, y = `linkin audiences`)) +
  geom_point(size = 2, alpha = 0.6) +          # Points with size and transparency
  labs(
    x = "Current students number",             # Axis labels
    y = "Linkin audience",
    title = "Scatter plot",
    #subtitle = "Optional Subtitle",           # Uncomment if needed
    caption = "Data source: LinkedIn advertising platform and school official website"
  ) +
  theme_minimal() +                            # Clean, academic-style theme
  theme(
    plot.title = element_text(hjust = 0.5, size = 14, face = "bold"),
    plot.subtitle = element_text(hjust = 0.5, size = 12),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10),
    panel.grid.major = element_line(color = "gray90"),
    panel.grid.minor = element_blank()
  )

# Save the plot as a high-quality PNG with a white background
ggsave("scatter_plot.png", p, width = 8, height = 6, dpi = 300, bg = "white")

#
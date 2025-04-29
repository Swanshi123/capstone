# Load required libraries
library(tidyverse)  # For data manipulation
library(circlize)   # For generating the chord diagram
library(magick)     # For converting PDF to PNG
library(readxl)     # For reading Excel files

# 1. Read the data (Replace with your actual file path)
df <- read_excel("/Users/liusheng/Desktop/final/capstone final/capstone/picture/FORworld.xlsx",sheet = 2, col_names = c("university", "destination", "students"))

# 2. Data Preprocessing
df <- df %>%
  filter(students > 0) %>%  # Remove rows where students == 0
  mutate(university = as.factor(university),  
         destination = as.factor(destination))

# NEW CODE: Sort destinations (countries) by number of students arriving
destination_order <- df %>%
  group_by(destination) %>%
  summarise(total_students = sum(students)) %>%
  arrange(desc(total_students)) %>%
  pull(destination)
df$destination <- factor(df$destination, levels = destination_order)

# Also create the overall sector order: keep university order as in the data, then the sorted destinations.
university_order <- unique(df$university)
sector_order <- c(as.character(university_order), as.character(destination_order))

# 3. Define Colors for Universities and Destinations
# Generate a color palette for universities
university_colors <- colorRampPalette(c("#40A4D8", "#33BEB7", "#B2C224", "#FECC2F", "#FBA127"))(length(unique(df$university)))
names(university_colors) <- unique(df$university)  # Assign names to colors

# Generate a color palette for destinations
destination_colors <- colorRampPalette(c("#A463D7", "#DB3937", "#F66320", "#FBA127", "#FECC2F"))(length(destination_order))
names(destination_colors) <- destination_order  # Assign names to colors

# Create the color map
color_map <- c(university_colors, destination_colors)

# 4. Create the Chord Diagram
pdf(file = "migration_chord_diagram.pdf", width = 20, height = 20)  # Increase canvas size

# Set plot parameters
par(mar = rep(0, 4), lheight = 0.5)  # Reduce text height spacing
circos.par(track.margin = c(0.02, -0.02), 
           start.degree = 90,  # Start rotation for better alignment
           gap.after = 5)  # Increase spacing between sectors

# Generate the chord diagram with label adjustments and our custom sector order.
chordDiagram(df, 
             grid.col = color_map,  # Assign colors
             transparency = 0.25, 
             directional = 1, 
             direction.type = c("diffHeight", "arrows"), 
             link.arr.type = "big.arrow", 
             diffHeight = -0.05,
             link.sort = TRUE, 
             link.largest.ontop = TRUE,
             order = sector_order,  # <-- This enforces our sector ordering
             annotationTrack = "grid",  # Keep grid track for better separation
             preAllocateTracks = list(track.height = 0.1))  # Reduce track height for labels

# Adjust sector labels to prevent overlap
circos.track(track.index = 1, bg.border = NA, panel.fun = function(x, y) {
  sector_name <- get.cell.meta.data("sector.index")
  x_limits <- get.cell.meta.data("xlim")
  
  # Rotate text for better readability
  circos.text(x = mean(x_limits), y = 0.3, 
              labels = sector_name, 
              cex = 1.2,  # Reduce font size
              facing = "clockwise",  # Adjust text direction
              niceFacing = TRUE,  
              adj = c(0, 0.5))
})

dev.off()  # Close the PDF device

# 5. Convert PDF to PNG (Optional)
p <- image_read_pdf("migration_chord_diagram.pdf")
image_write(image = p, path = "migration_chord_diagram.png")

# 6. Show the PNG output
file.show("migration_chord_diagram.png")
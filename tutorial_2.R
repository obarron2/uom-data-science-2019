# Introduction to data science with applications in R and git
# University of Manchester 
# Tutorial led by Tom Franklin, 13/02/2019

####
# Tutorial 2 Code ----
# 1. load libraries
# 2. Create map of UoM 
# 3. Choropleth mapping
# 4. RMarkdown for report writing 

####
# 1. Install and load libraries ----
library("tidyverse")
# You'll need the `leaflet` library, install it and load it

####
# 2. Create map of UoM ----

# Edit the below to be at;
# latitude: 53.464455 longitude: -2.235348
leaflet() %>%
  addTiles() %>%
  addMarkers(lat = , lng = )
  
# Add some nice provider tiles, check page 37 for that 

# Now make a map of where the titanic sank;
# latitude: 41.7666636 longitude: -50.2333324

# Can you add a popup? 
# Can you edit the zoom function using setView()? 

####
# 3. Choropleth mapping ----

# We need the `rworldmap` package, so install it and load it

newmap <- getMap(resolution = "coarse")

plot(newmap)

# Can you print a choropleth map? Assign it to the object `titanic_map`

####
# 4. RMarkdown for report writing ----

raw_data <- read_csv("data/passenger_data.csv")

# Number of passengers 
total_passengers <- nrow(raw_data)

female_passengers <- nrow(raw_data %>%
                            filter(Sex == "female"))

# Now can you do the same for Male passengers 
# and for survival numbers for each gender?

# male_passengers <- nrow() # ... etc.


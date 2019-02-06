# Introduction to data science with applications in R and git
# University of Manchester 
# Tutorial led by Tom Franklin, 06/02/2019

####
# Tutorial 1 Code ----
# 1. Install and load libraries
# 2. Load data 
# 3. Data manipulation with dplyr
# 4. Data summarisation 
# 5. Graphics with ggplot2 

####
# 1. Install and load libraries ----

# Installing R packages
install.packages("tidyverse")

# Loading R packages
library("tidyverse")

# Tasks: 
# How would I install the skimr package? 
# How would I load the skimr package? 
# Do the same for following packages:
# `skimr`, `RColorBrewer` and `ggthemes` 

####
# 2. Load data ----
raw_data <- readr::read_csv("data/passenger_data.csv")

# This is equivilant but we don't use this! 
readr::read_csv("data/passenger_data.csv") -> raw_data 

# Quick glance at the data

skimr::skim(raw_data)

####
# 3. Data manipulation with dplyr ----

# In words, can you explain what %>% stands for? 

# Selecting columns 

raw_data %>%
  dplyr::select()

# Task:

# i. Select Age and Sex columns only 

# ii. Select all data apart from the Survived column

# iii. Select the first three variables using numeric 

# Filtering data

# i. Filter data to keep only those where Pclass (passenger class) is equal to 1

# 11. Filter the data to keep only data where there's first 
#     class passengers and passengers are aged over 50

# iii. Filter data to keep only 2nd and 3rd Class passengers 

# iv. Filter data for only those who Embarked n the journey from Cherbourg

# Renaming data

# i. Rename the Sex column to be Gender, 

# tip: rename(new_column_name = old_column_name)

# Arranging data

# i. Arrange the dataframe from low to high 

# ii. Arrange Fare data from high to low

# Make new variablea (mutate)

# i. Create a new variable called fare_in_dollars, multiplying the fare by a conversion rate of 1.37

# ii. Create an estimate of a passengers birth year by using their Age information!

# iii. Create a flag to indicate those who have an above average income (£29.70)

# Summary statistics - refer to the booklet for tasks! 

# Recoding data 

# i. Recode the integer values of passenger classes to be "1st Class", "2nd Class" etc...

# Distinct data

# i. Get a distinct list of the Cabin names on the titanic 

# Advanced exercises 


####
# 4. Data summarisation (using base R syntax)

# Summary stats of passenger Sex
table(raw_data$Sex)

# Cross tabulation of passenger Sex and whether they Survived or not

# Proportion tables...

# Column sum table 

# Row sum table 

# 3 way cross tab breakdown by Passenger class, Sex and Survival status 

####
# 5. Graphics with ggplot2 ----

# Make your first ggplot2 bar chart! 
ggplot() 

# Make a filled bar chart 

# Make a ggplot2 with a theme

# Make a scatterplot

# Make an interactive scatterplot 
# - Note that you'll need the `ploty` package to do this!

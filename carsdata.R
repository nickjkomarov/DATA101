setwd("C:/Users/Nick/Desktop/DATA101/Project1")
getwd()

#dplyr package is loaded
library(dplyr)

#csv file is read into data frame called 'carsdata'
carsdata <- read.csv(file = 'mtcars.csv', header = TRUE)
carsdata

#Columns for car name, # of cylinders, mpg, and transmission are selected
#saved as 'carsmpg'
carsmpg <- select(carsdata,X,cyl,mpg,am)
carsmpg

#Filtered by cars with automatic transmission only
#saved as 'amcarsmpg'
amcarsmpg <- filter(carsmpg, am == 1)
amcarsmpg

#Automatic transmission cars are grouped by # of cylinders
#For each group, average mpg is calculated
amcarsmpg %>%
  group_by(cyl) %>%
  summarise(avg_mg = mean(mpg))

# Load necessary libraries
library(ggplot2)
library(sf)
library(sp)
library(gstat)
library(rgdal)
#install.packages("automap")
library(automap)

# Read the data
Rochester <- read.csv("Data.csv")


#https://gis.stackexchange.com/questions/158021/plotting-map-resulted-from-kriging-in-r
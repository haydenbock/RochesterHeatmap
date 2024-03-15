install.packages("readxl")
library(tidyverse)
library(readxl)
library(dplyr)

#data

Lat_Long <- read_excel("Lat-Long.xlsx")
Diversity <- read_excel("Diversity.xlsx")


Coord <- Lat_Long %>% select(Name, Mean_Latitude, Mean_Longitude)
Diversity_mean <- Diversity %>% 
  select(Name, Richness, Shannon_WholePark) %>% 
  group_by(Name) %>% 
  summarize(Rich = mean(Richness),
            Alpha = mean(Shannon_WholePark))


Data <- left_join(Coord, Diversity_mean)


write.csv(Data, "Data.csv")

library(tidyverse)
library(dplyr)

#Load csv into dataframe
MechaCar_mpg <- read.csv("MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)

#linear regression
MechaCar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
                    ground_clearance + AWD, data = MechaCar_mpg)

#summary statistics
summary(MechaCar_lm)
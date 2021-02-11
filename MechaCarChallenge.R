library(tidyverse)
library(dplyr)
# Deliverable 1

# Load csv into dataframe
MechaCar_mpg <- read.csv("MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)

# linear regression
MechaCar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
                    ground_clearance + AWD, data = MechaCar_mpg)

# summary statistics
summary(MechaCar_lm)

# Deliverable 2
Suspension_Coil <- read.csv("Suspension_Coil.csv", stringsAsFactors = F, 
                            check.names = F)

# Total Summary
total_summaryPSI <- Suspension_Coil %>% summarize(Mean=mean(PSI),
                            Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Lot Summary 
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),
            .groups='keep')

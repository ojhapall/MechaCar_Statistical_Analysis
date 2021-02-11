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
# Load csv into dataframe
Suspension_Coil <- read.csv("Suspension_Coil.csv", stringsAsFactors = F, 
                            check.names = F)

# Total Summary
total_summaryPSI <- Suspension_Coil %>% summarize(Mean=mean(PSI),
                            Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Lot Summary 
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),
            .groups='keep')

# Deliverable 3

# t-test for all lots 
t.test(Suspension_Coil$PSI, mu=1500)

# t-test for Lot 1
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI, mu=1500)

# t-test for Lot 2
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI, mu=1500)

# t-test for Lot 3
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI, mu=1500)

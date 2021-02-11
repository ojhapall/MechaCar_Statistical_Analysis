# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG 

Vehicle length and ground clearance are likely to cause a non-random amount of variance to the mpg values in the dataset. There is also evidence that suggests vehicle weight may have a non-random amount of variance to the mpg values. 

The slope of the linear model is not considered to be zero. This is the case because the p-value is less than the signifcance value of 0.05 at 5.35e-11. 

The Multiple R-Squared is 0.7149. This shows that the linear model can effectively predict the mpg of MechaCar prototypes at 71.49%. 

## Summary Statistics of Suspension Coils

If we look at all lots as a whole, the suspension coils have a variance of around 62. This is within the manufacturing specifications. 

If we look at each lot seperately then the only Lot 1 and Lot 2 are within the specification. Lot 3 has a variance of roughly 170, which is over the manufacturing specification. 

## T-Tests of Suspension Coils 

If we look at all lots, the manufacturing lots are satistifically signficant.This shows that the suspension coils PSI in all lots are satistically similar to population mean. However, if we look at each lot individually only Lot 1 and 2 are satisfically significant. This shows that the suspension coils PSI in this lot are satistically similar to population mean. Lot 3 has a p-value below 0.05 at 0.04168 which shows that the Suspension Coils PSI are statistically difference from the mean. 

## Study Design: MechaCar vs Competition 

To compare the competition vehicles against the Mecha Car vehicles is by doing a t-tests. Rather than comparing different lots, we would compare cost, fuel efficiency, maintenance cost and safety rating. Cost is important because if it is on average similar to its competition but rates better than other cars in other areas of performance a consumer would be more likely to choose Mecha Car. We would also analyze fuel efficiency and maintence cost because on average, Mecha Car would like to be lower or similar to other competition vehicles. Safety rating is also important, in this case we would like the competition to be similar or lower than Mecha Car.

The Null hypothesis would be that there is no statistical significance compared to the other vehicles. 

The alternative hypothesis would be there is a statistical significance compared to other vehicles. 
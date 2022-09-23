# MechaCar_Statistical_Analysis

The following data analysis uses R programming language to analyze production data from a car manufacturer to pinpoint production problems.

## Linear Regression to Predict MPG

- The first analysis is a linear regression to understand what design characteristics best predict gas mileage measured in Miles Per Gallon (MPG) among 50 car prototypes.
    - Using a combination of the `summary()` and the `lm()`, we are able to produce a linear regression model that compares the depependent variable (MPG) to several independent variables (vehicle length, vehicle weight, spoiler angle, ground clearance, and all wheel drive).
    - The output of this linear regression reveals that vehicle length and ground clearance provide a non-random amount of variance to the mpg values because they have p-values of less than the assumed significance level of 0.05%.
        - Vehicle Length produces a Pr(>|t|) value of 2.60e-12
        - Ground Clearance produces a Pr(>|t|) value of 5.21e-08
    - We also see that the slope of the linear model is not considered to be 0 because the p-value of the linear regression is less than 0.05%, allowing us to reject the null hypothesis that the slope is equal to 0
    - Finally, we can feel confident that this linear model does predict the mpg because the model produces a r-squared values of 0.7149.
        - This means that 71.49% of the variablility is described by this model.

IMAGE of LINEAR REGRESSION

## Summary Statistics on Suspension Coils

- Design specifications for the MechaCar suspension coils state that variance of suspension coils cannot exceed 100 PSI.
- Summary Statistics can determine if the current manufacturing data meet this specificaiton. 
    - First, evaluating the variance among all of the manufacturing lots reveals that, in total, MechaCar manufacturing is within spec for suspension coils:
        - Variance: 62.294
        - Standard Deviation: 7.893

IMAGE of TOTAL_SUMMARY

    - Comparing each manufacturing lot highlights that Lot 3 is outside of the suspension specifications set by MechaCar:
        - Variance: 170.286
        - Standard Deviation: 13.049
- Reviewing the summary statistics for each manufacturing lot suggests that the problems at Lot 3 are driving up the variance observed across all manufacturing lots.

IMAGE of LOT_SUMMARY

## T-Tests on Suspension Coils

- In this analysis, applying a t-test to the PSI of the suspension coils will reveal if there is a statistically significant difference between the mean of a sample and the presumed mean of the population.

- The first t-test compares the mean of all of the suspension coil PSI across all manufacturing lots to a presumed mean of 1500 PSI to reveal a p-value of 0.06028. 
    - Because this is above 0.05, we cannot reject the null hypothesis: the means are statistically similar.

IMAGE of TOTAL_LOT_TTEST

- The second t-test compares the mean Lot 1 suspension coil PSI to to the presumed mean of 1500 PSI to reveal a p-value of 1. 
    - Because this is above 0.05, we cannot reject the null hypothesis: the means are statistically similar.

IMAGE of LOT_1_TTEST

- The second t-test compares the mean Lot 2 suspension coil PSI to the presumed mean of 1500 PSI to reveal a p-value of 0.6072. 
    - Because this is above 0.05, we cannot reject the null hypothesis: the means are statistically similar.

IMAGE of LOT_2_TTEST

- The second t-test compares the mean Lot 3 suspension coil PSI to the presumed mean of 1500 PSI to reveal a p-value of 0.04168 
    - Because this is below 0.05, we can reject the null hypothesis: the means are statistically different.

IMAGE OF LOT_3_TTEST

## Study Design MechaCar vs Competition

- This study seeks to understand the design differences among MechaCar's most fuel efficient vehicles and its competitor's.

- To answer this question, some initial statistical tests can reveal the variables to compare:
    - The initial linear regression in this analysis shows that the intercept is statistically significant with a p-value of 5.08e-08.
    - Statistically significant intercepts *can* mean that there are other variables that could help explain the variability of the dependent variable but were not included in the initial model. 
    - Suggest expanding this linear regression to include engine size and horse power to determine what variables predict MPG. 
    - This linear regression should help narrow down the data for the next statistical tests to better understand the differences between MechaCar's design and that of its competitor's as it relates to fuel efficiency. 

- After determining the signficant varaiables for predicting MPG I suggests gathering 2 samples of data: 
    1. Design characteristics of MechaCar's prototypes with the highest MPG.
    2. Design characteristics of the competitor's vehicles with the highests MPG.

- Run a two-sample t-test on these samples to compare the means of the design variables. 

- A null hypothesis would be that the means are statistically similar (p-value > 0.05)
- An alternative hypothesis would be that the means are statistically different (p-value < 0.05).



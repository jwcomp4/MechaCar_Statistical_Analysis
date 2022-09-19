library(dplyr)
library(tidyverse)

# Deliverable 1: Linear Regression to Predict MPG

# Reading in the CSV file:
mechacar_df <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
# Linear Regression using lm():
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_df)
# Calculating p-value and r-squared value using the summary() function:
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_df))

# Deliverable 2: Create Visualizations for the Trip Analysis

# Reading in the CSV file:
suspension_df <- read.csv("Suspension_Coil.csv", check.name=F, stringsAsFactors = F)

total_summary <- suspension_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) 

# Deliverable 3: T-Tests on Suspension Coils

plt <- ggplot(suspension_df,aes(x=PSI))
plt + geom_density()

suspesion_sample <- suspension_df %>% sample_n(25)
plt <- ggplot(suspesion_sample,aes(x=PSI))
plt + geom_density() 
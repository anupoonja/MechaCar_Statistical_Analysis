## Deliverable 1 : Linear Regression to Predict MPG

library(tidyverse)

# Import and read MechaCar_mpg.csv file as dataframe
mecha_car_data <- read.csv(file="MechaCar_mpg.csv", stringsAsFactors=F, check.names=F)
head(mecha_car_data)

# Perform linear regression using lm() function. 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_data)

# mpg = 6.27*vehicle_length + 0.00*vehicle_weight + 0.07*spoiler_angle + 3.55*ground_clearance - 3.41*AWD - 104

# Determine the p-value and the r-squared value for the linear regression model
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_data)
summary(mecha_lm)

# Deliverable 2 : Create Visualizations for the Trip Analysis

# Import and read Suspension_Coil.csv

suspension_data <- read.csv(file="Suspension_Coil.csv", stringsAsFactors = F, check.names = F)

# Visualization of PSI distribution
ggplot(suspension_data,aes(x=PSI)) + geom_density()

# Create total_summary dataframe using summarize function to get mean, median, variance, and standard
# deviation of the suspension coil's PSI column

#total_summary <- suspension_data %>% summarize(Mean, Median, Variance, SD)
total_summary <- suspension_data %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI))
head(total_summary)

# Determine Summary by lot
lot_summary <-suspension_data %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
head(lot_summary)

# Deliverable 3 : T-Test on Suspension coils

# Using t.test() function to determine if the PSI across all manufacturing lots is statistically different
# from the population of mean 1,500 pounds per square inch.
t.test(suspension_data$PSI, mu=1500)

# T-Test using subset() function
lot_1 <- t.test(subset(suspension_data, Manufacturing_Lot=='Lot1')$PSI, mu=1500)
lot_1
lot_2 <- t.test(subset(suspension_data, Manufacturing_Lot=='Lot2')$PSI, mu=1500)
lot_2
lot_3 <- t.test(subset(suspension_data, Manufacturing_Lot=='Lot3')$PSI, mu=1500)
lot_3

#t.test(subset(suspension_data, Manufacturing_Lot=='Lot1')$PSI, mu=1500)

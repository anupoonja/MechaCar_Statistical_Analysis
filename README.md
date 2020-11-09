# MechaCar_Statistical_Analysis


# Deliverable 1 :

## Linear Regression to Predict MPG


### 1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

![deliverable1](AddRes/deliverable1_1.png)

![deliverable1](AddRes/deliverable1_2.png)

Intercept, vehicle length and ground clearance provide non-random amount of variance to the mpg values in the dataset. Their Pr(>|t|) values are of significance code 0.
- Intercept : 5.08-08
- Vehicle length : 2.60e-12
- Ground clearance : 5.21e-08


### 2. Is the slope of the linear model considered to be zero? Why or why not?
The slope of this linear model cannot be considered to be zero. The p-value is 5.35e-11. It is a smaller than the significance level of 0.05. It means that there is sufficient evident to reject null hypothesis and the slope of multiple linear regression model are not zero.

### 3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This linear regression model does help predict the relationship between mpg and other variables. The vehicle length and ground clearance does have significant correlation with mgp.


# Deliverable 2:

## Summary Statistics on Suspension Coils

MechaCar suspension coils dataset have mean and median 1498.78 and 1500 respectively. The values are normally distributed.

![Total Summary](AddRes/deliverable2_total.png)

The Standard deviation of PSI is 7.89.

The Variance of the PSI distribution is 62.29. The value is less than 100 pounds per inch. The design specification for MechaCar suspension coils dictate that he variance of the suspension coils must not exceed 100 pounds per square inch. 62.29 is less than 100 and does meet the design specification for all manufacturing lots and each lot individually.

![Lot Summary](AddRes/deliverable2_lot.png)

# Deliverable 3:

## T-Tests on Suspension Coils

![T-Test](AddRes/deliverable3_t_test.png)

By performing the T-Test on suspension coils we see that the p-value is 0.06. The value is greater than the significance level of 0.05. This indicates that there is not enough evidence to reject the null hypothesis. This means that the PSI result is statistically similar to the mean population of result of 1500 PSI.

### Lot_1 : 

![Lot1](AddRes/deliverable3_lot1.png)

P-value of Lot_1 is 1.  It is greater than the significance level of 0.05. This indicates that there is not enough evidence to reject the null hypothesis. This means that the PSI result is statistically similar to the mean population of result of 1500 PSI.

### Lot_2 : 

![Lot2](AddRes/deliverable3_lot2.png)

P-value of Lot_2 is 0.06. It is greater than the significance level of 0.05. This indicates that there is not enough evidence to reject the null hypothesis. This means that the PSI result is statistically similar to the mean population of result of 1500 PSI.

### Lot_3 : 

![Lot3](AddRes/deliverable3_lot3.png)

P-value of Lot_3 is 0.042. It is less than the significance level of 0.05. This indicates that there is enough evidence to reject the null hypothesis. This means that the PSI result is not statistically similar to the mean population of result of 1500 PSI.

# Deliverable 4 :

## Study Design: MechaCar vs Competition

With technological advancements each year, people want car that is latest, greatest and with good value for money. Along with updating to new cars comes the question about the resale value of the old cars. The resale value of the car makes a huge difference while deciding to buy the car.
To place the MechaCar ahead of its competition cars, a statistical study can be performed to quantify the resale value of the MechaCar in the market against the competition cars.

### What metric or metrics are you going to test?
We would have to collect the resale value of the cars based on the milage and the year of manufacture.

### What is the null hypothesis or alternative hypothesis?
H0: There is no statistical difference between our resale value dataset and other comparable vehicles resale value dataset in the market.
Ha: The true mean of our resale value dataset is GREATER than the mean of our competitors resale value dataset.

### What statistical test would you use to test the hypothesis? And why?
ANOVA is useful in measuring multiple samples. Hence we can use *two-way ANOVA*(Analysis of Variance) test to see the distribution means for different mileage and year of manufacture for the MechaCar.

### What data is needed to run the statistical test?
A dataset and a formula to intercept the different variables and factors. We can use the formula Y ~ A or Y ~ A + B, where Y is the column name of the dependent variable(resale value) and A,B (milage, year of manufacture) are the column names of the independent variable.


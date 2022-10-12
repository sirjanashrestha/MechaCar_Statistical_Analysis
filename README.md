# MechaCar_Statistical_Analysis
-- Statistical Analysis using R -- 

## PROJECT OVERVIEW
This project aims to analyse the production data as MechaCar is suffering from production troubles. The main purposes of this project are outlines as below;
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pound per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles from other manufacturers. 

Tools used: R Studio
Source of data: MechaCar_mpg_csv, Suspension_Coil.csv

### Linear Regression to Predict MPG

Our multiple linear regression statement is;
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=Mechacardf)

- In the summary output we can see that, spoiler_angle and vehicle_length have a significant impact on mpg values. In other words, these two variables provided a non-random amount of variance to the mpg values in the dataset.

![Getting Started](./images/3.png)

- The linear regression model of our dataset is;
mpg=9.56(vehicle_length)+1.81(vehicle_weight)+1.03(spoiler_angle)+6.55(ground_clearance)-1.35(AWD)-6.559

- P value of our linear regression analysis is 5.35e-11 which is smaller than our assumed significance of 0.05%. Therefore there is sufficient evidence to reject our null hypothesis, which means that the slope our linear model is not zero.

- Multiple R-square in 0.7149 which means that roughly 71.49% of the variability of dependent variable 'mpg' is explained using this model. Adjusted R-squared in 0.6825 

### Summary Statistics on Suspension Coils

 To determine if the manufacturing process is consistent across production lots, weight capacities of multiple suspension coils were tested.

The following metrics mean, median, variance, and standard deviation were calculated.
- For PSI column
![Getting Started](./images/2.png)

- For each manufacturing lot
![Getting Started](./images/1.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

- The variance for PSI column in total is 62.29. So, the current manufacturing data meet this design specifications for all manufacturing lot in total. However for Manufacturing Lot 3, the variance is high i.e. 170.29 which is greater than the design specification standard. 

### T-Tests on Suspension Coils
![Getting Started](./Manufacturing_lots.png)


![Getting Started](./T_suspensioncoil.png)


### Study Design: MechaCar vs Competition.
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
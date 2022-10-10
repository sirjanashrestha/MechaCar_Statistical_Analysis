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
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Our multiple linear regression statement is;
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=Mechacardf)

In the summary output we can see that, spoiler_angle and vehicle_length have a significant impact on mpg values. In other words, these two variables provided a non-random amount of variance to the mpg values in the dataset.

![Getting Started](./3.png)

The linear regression model of our dataset is;
mpg=9.56(vehicle_length)+1.81(vehicle_weight)+1.03(spoiler_angle)+6.55(ground_clearance)-1.35(AWD)-6.559

Is the slope of the linear model considered to be zero? Why or why not?

P value of our linear regression analysis is 5.35*10^(-11) which is smaller than our assumed significance of 0.05%. Therefore there is sufficient evidence to reject our null hypothesis, which means that the slope our linear model is not zero.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

R-squared value is 0.6825 which means that roughly 68.25% of the variability of dependent variable 'mpg' is explained using this model.




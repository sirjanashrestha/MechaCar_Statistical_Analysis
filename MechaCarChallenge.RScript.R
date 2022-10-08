library(dplyr)

# Linear Regression to Predict MPG

# Import and read 'Mechacar_mpg.csv'
Mechacardf<-read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Perform linear regression that predicts mpg
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=Mechacardf)
# Determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=Mechacardf))

# Import and read 'Mechacar_mpg.csv'
suspension_table<-read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# Calculate mean,median,variance and sd  for PSI column
total_summary<-suspension_table%>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')
total_summary

# Calculate mean,median,variance and sd of each manufacturing lot
lot_summary<-suspension_table%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')
lot_summary
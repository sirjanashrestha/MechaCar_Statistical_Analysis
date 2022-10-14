library(dplyr)

# Deliverable 1
# Linear Regression to Predict MPG

# Import and read 'Mechacar_mpg.csv'
Mechacardf<-read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Perform linear regression that predicts mpg
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=Mechacardf)

# Determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=Mechacardf))

model<-lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=Mechacardf)



# Deliverable 2
# Create Visualizations for the Trip Analysis

# Import and read 'Suspension_Coil.csv'
suspension_table<-read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# Calculate mean,median,variance and sd for PSI column
total_summary<-suspension_table%>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')
total_summary

# Calculate mean,median,variance and sd of each manufacturing lot
lot_summary<-suspension_table%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')
lot_summary

#Deliverable 3
# T-Tests on Suspension Coils 

# T-tests that compare all manufacturing lots against the population mean of 1500 pounds per square inch
t.test(suspension_table$PSI,mu=1500)

# T-tests that compare each manufacturing lot against mean PSI of the population
# Manufacturing Lot-1
lot1<- suspension_table %>% filter(Manufacturing_Lot=='Lot1')
t.test(lot1$PSI,mu=1500)

# Manufacturing Lot-2
lot2<- suspension_table %>% filter(Manufacturing_Lot=='Lot2')
t.test(lot2$PSI,mu=1500)

# Manufacturing Lot-3
lot3<- suspension_table %>% filter(Manufacturing_Lot=='Lot3')
t.test(lot3$PSI,mu=1500)

# Import Libraries
library(tidyverse)
library(dplyr)
setwd("~/R_Analysis/")
# Read MechaCar_mpg.csv
prototype_data <- read.csv(file='MechaCar_mpg.csv')
#  Generating linear model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = prototype_data)
# Summarize linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = prototype_data))
#__________________________________________________________________________________
# Ground Clearance
gc_model <- lm(mpg ~ ground_clearance, prototype_data)
gc_yval <- gc_model$coefficients['ground.clearance']*prototype_data$ground_clearance + gc_model$coefficients['(Intercept)']
# Import datatset into ggplot2
plt <- ggplot(prototype_data,aes(x=ground_clearance,y=mpg))
# Plot scatter and linear model
plt + geom_point() + geom_line(aes(y=gc_yval), color = "red")
#__________________________________________________________________________________
# Vehicle Length
vl_model <- lm(mpg ~ vehicle_length, prototype_data)
vl_yval <- vl_model$coefficients['vehicle.length']*prototype_data$vehicle_length + vl_model$coefficients['(Intercept']
# Import datatset into ggplot2
plt <- ggplot(prototype_data,aes(x=vehicle_length,y=mpg))
# Plot scatter and linear model
plt + geom_point() + geom_line(aes(y=vl_yval), color = "blue")
#__________________________________________________________________________________
#__________________________________________________________________________________
# Suspension Coil
# Read Suspension_Coil.csv
sc_data <-read.csv('Suspension_Coil.csv')
#Summary Statistics
total_summary <- sc_data %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
total_summary
#Summary Statistics to the Lot Production
lot_summary <- sc_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary
# T-test
t.test(sc_data$PSI, mu=1500)
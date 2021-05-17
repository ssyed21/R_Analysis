# R_Analysis
## Linear Regression to Predict MPG
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- vehicle length, ground clearance, and the intercept
Is the slope of the linear model considered to be zero? Why or why not?
- it is not considered 0 because we reject the null hypothesis due to the p-value 5.35e-11 < 0.05
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- Yes we can say that this linear regression model supports the claim that mpg is predictable based on the prototype's features
## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
- All of the lots exceed 100 PSI seen by how the mean being close to 1500 and with 99% of the data being within 3 standard deviation and the standard deviations for the lots is less than 15 each
## T-Tests on Suspension Coils
- Based on the t test and the p-value = 0.06028 > 0.05 we do not have sufficient evidence to reject the null hypothesis and that there is no statistical difference between the observed sample mean and its presumed population mean.
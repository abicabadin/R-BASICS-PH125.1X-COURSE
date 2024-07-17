#EXERCISE 1.6: VECTOR ARITHMETIC

#PART 1. VECTORIZED OPERATIONS
#INSTRUCTIONS. We want to change the temperature from Fahrenheit to Celsius.
#Remember that to convert from F to C we use C= 5/9 * (F-32)
#Use the vector arithmetic to convert temp to Celsius
#Change the data frame called city_temps with the city names and temperatures 
#in Celsius. Remember that column names should not be changed.

#SOLUTION:
# Map city names to `city`
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Store temperature values ​​in `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convert the temperature to Celsius and rewrite the original values ​​of
# `temp` with Celsius values
temp <- (temp-32)*5/9

# Generate a data frame called `city_temps`
city_temps <- data.frame(name = city, temperature = temp)


#PART 2. VECTORIZED OPERATIONS(CONTINUED)
#INSTRUCTIONS: Now we can use what we have learned to perform operations 
#that would be more complicated using for-loops.
#What is the sum of the following equation: 1 + 1/2^2 + 1/3^2 + ... + 1/100^2? 
#Thanks to Euler we know that it must be close to pi^2/6.
#Define an object x that contains the numbers 1 to 100.
#Calculate the sum 1 + 1/2^2 + 1/3^2 + ... + 1/100^2.

#SOLUTION:
# Define an object `x` with the numbers 1 through 100
x <- seq(1,100)

# Calculate the sum 1 + 1/2^2 + 1/3^2 + ... + 1/100^2
sum(1/x^2)


#PART 3. VECTORIZED OPERATIONS (CONTINUED)
#INSTRUCTIONS: Calculate the murder rate per 100,000 for each state and 
#store it in an object called murder_rate.
#Next, calculate the average homicide rates for the US using the mean function.
#What is the average?

#SOLUTION: 
# Load the murders data set
library(dslabs)
data(murders)

# Save the murder rate per 100,000 for each state and store it in a 
# `murder_rate` object
murder_rate <-murders$total/murders$population*100000

# Calculate the average murder rate
mean(murder_rate)
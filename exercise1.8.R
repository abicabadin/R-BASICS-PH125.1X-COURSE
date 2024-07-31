#EXERCISE 1.8: BASIC PLOTS

#PART 1. SCATTERPLOTS
#INSTRUCTIONS:Transform the variables using logarithmic transformation to
#base 10 and save it in the "log10_population" object.
#Transform the total gun homicides using the logarithmic transformation to 
#base 10 and store it in the object "log10_total_gun_murders"
#Create a scatterplot with log-transformed population and homicides.


#SOLUTION:

library(dslabs)
data(murders)

# Define some variables (note that the data set has been
#loaded for you)
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)


# Transform the population (the original, unadjusted population, not the population
# in millions) using the logarithmic transformation to base 10 and save it in the
# object `log10_population` 
log10_population <- log10(murders$population)

# Transform the total gun homicides using
# logarithmic transformation to base 10 and save it in the object
# `log10_total_gun_murders`
log10_total_gun_murders <- log10(murders$total)

# Create a scatterplot with log-transformed population and homicides
plot(log10_population, log10_total_gun_murders)


#PART 2. HISTOGRAMS
#INSTRUCTIONS:Calculate the population in millions and store it in 
#the population_in_millions object.
#Generate a histogram of state populations using the hist function.


#SOLUTION:

library(dslabs)
data(murders)

# Store the population in millions and save it to `population_in_millions`
population_in_millions <- murders$population/10^6

# Create a histogram of this variable
hist(population_in_millions)

#PART 3. BOXPLOTS
#INSTRUCTIONS: In a single line of code, stratify state populations by 
#region and generate boxplots for the strata.


#SOLUTION:

library(dslabs)

# In a single line of code, stratify state populations by region 
# and generate boxplots for the strata for the `murders` data set

boxplot(population~region, data = murders)
#EXERCIE 1.5: SORTING
#PART 1: SORT
#INSTRUCTIONS: Sometimes it is useful to arrange a vector. 
#By default, the sort function sorts a vector in increasing order. 
#Let's practice this using the murders dataset as an example.

#Use the $ operator to access the population size data and
#save it to the pop object.
#Then use the sort function to sort pop from smallest to largest.
#Finally, use the [ operator to report the smallest population size.

#SOLUTION

library(dslabs)
data(murders)

# Access the `state` variable and store it in an object called 'states'
states <- murders$state

# Sort the object alphabetically and redefine the states object
states <- sort(states)

# Report the first alphabetical value
states[1]

# Access the population values ​​of the data set and
# save it to `pop`
pop <- murders$population

# Sort the object and save it to the same object
pop <- sort(pop)

# Report the smallest population size in `pop`
pop[1]

#PART 2: ORDER
#INSTRUCTIONS:Now instead of the smallest population, 
#let's find the number in the row of the state with the smallest population 
#size in the murders data set.
#Access the population variable and save it to an object called pop.
#Find the order of the indices and save in an object called ord which results 
#in pop[ord] being ordered from highest to lowest.
#Find the index of the murders entry that represents the state with 
#the smallest population.

#SOLUTION:

library(dslabs)
data(murders)

# Access the population of the data set and store it in an object called
# `pop`
pop <- murders$population
# Use the order command to find the vector of indices that pop orders and
# save it in an object called `ord`
ord <- order(pop)

# Find the index number of the entry with the smallest population size
ord[1]


#PART 3: NEW_CODE
#INSTRUCTIONS:Write a line of code that provides the index of the smallest 
#population entry. Use the which.min command.

#SOLUTION
library(dslabs)
data(murders)

# Find the index of the smallest value for the total variable
which.min(murders$total)

# Find the index of the smallest value of population
which.min(murders$population)


#PART 4: USING THE OUTPUT
#INSTRUCTIONS:Find the index of the smallest state 
#using which.min(murders$population) and store it in i.
#Define a states variable that stores the names of the 
#states from the murders data set.
#Combine them to find the name of the smallest state.

#SOLUTION:
library(dslabs)
data(murders)

# Define the variable i to be the index of the smallest state
i <- which.min(murders$population)

# Define the `states` variable that saves the states
states <- murders$state

# Use the index you just defined and `states` to find the state with 
# the smallest population
states[i]


#PART 5: RANKS
#INSTRUCTIONS:Define a states variable that 
#contains the names of the states in the murders data set.
#Use rank(murders$population) to determine the population 
#size range (smallest to largest) for each state and 
#store these ranges in an object called ranks. 

#Generate a data frame with the names of the states and their respective ranges. 
#call the data frame my_df. Remember the column names should be states and ranks.

#SOLUTION:
library(dslabs)
data(murders)

# Save temperatures in an object called `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Store city names in a `city` object
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Generate a data frame with city names and temperatures
city_temps <- data.frame(name = city, temperature = temp)

# Define a states variable `states` to contain the name of the
# states from the `murders` data set
states <- murders$state

# Define a `ranks` variable to determine the rank of sizes
# of population
ranks <- rank(murders$population)


# Generate a `my_df` data frame with the name of the states and their rank
my_df <- data.frame(states=states, ranks = ranks)

#PART 6: DATA FRAMES
#INSTRUCTIONS: Generate a states variable to hold the state
#names of the population.
#Generate a ranks variable to hold the ranks of population size.
#Generate an ind object that holds the indices needed to 
#sort the population values, using the order command. 
#For example, we can define ord <- order(murders$population).
#Generate a data frame with both variables following the order from 
#smallest to largest population. Use the square bracket 
#operator [ to reorder each column in the data frame. For example, states[ord] 
#sorts abbreviations based on population size. 
#The data frame columns must have the names state and ranks.

#SOLUTIONS:

library(dslabs)
data(murders)

# Generate a variable `states` to contain the names of the states of the
# murders data set
states<- murders$state

# Generate a `ranks` variable to determine the ranks
# of population sizes
ranks <- rank(murders$population)

# Generate a variable `ind` to hold the indices needed for sorting
# the population values ​​with the order command.
ind <- order(murders$population)

# Generate a data frame `my_df` with the name of the state and its ordered rank
# from the smallest population to the largest population

my_df <- data.frame(states=states[ind], ranks=ranks[ind])

#PART 7: NA
#INSTRUCTIONS:If we apply the is.na function to a vector, it gives us a 
#logical vector that tells us which inputs are NA. Assign the logical vector 
#that is the result of is.na(na_example) to an object called ind.
#Using the sum command, determine how many NAs na_example has.

#SOLUTION:
# Use the new data set
library(dslabs)
data(na_example)

# Review the structure
str(na_example)

# Find what the average of the entire data set is
mean(na_example)

# Use `is.na` to create a logical index on an object called `ind` that tells which entries are `NA`
ind <- is.na(na_example)

# Determine how many NAs exist in the variable ind using the sum function
sum(ind)

#PART 8: REMOVE NA
#INSTRUCTIONS: Write a line of code to calculate the average of na_example, 
#after removing the entries from NA using the ! operator! in ind.
# Notice what we can do with the `!` operator
x <- c(1, 2, 3)
ind <- c(FALSE, TRUE, FALSE)
x[!ind]


# Generate the ind vector for 'na_example'
library(dslabs)
data(na_example)
ind <- is.na(na_example)

# When we try to calculate the average, we get `NA` as the answer
mean(na_example)

# Calculate the average of `na_example` after removing the
# input `NA` by using the `!` operator in `ind`
mean(na_example[!ind])

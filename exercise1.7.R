#EXERCISE 1.7: INDEXING 


#PART 1. LOGIC VECTORS
#INSTRUCTIONS: The murder_rate object contains the homicide rate per 100,000
#for each state. Use a logical operator to create a logical vector called low
#with outputs indicating which of the murder_rate inputs are less than 1 and 
#which are not.


#SOLUTION:

library(dslabs)
data(murders)

# Store the homicide rate per 100,000 for each state, in
# `murder_rate`
murder_rate <- murders$total / murders$population * 100000

# Save homicide rate values ​​per 100,000 that are lower
# than 1,`murder_rate < 1`, in the `low` object
low <- murder_rate < 1


#PART 2. WHICH
#INSTRUCTIONS: Use the results of the previous exercise and the which function
#to determine the murder_rate indices associated with values less than 1.

#SOLUTION:

library(dslabs)
data(murders)

# Store the homicide rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Store `murder_rate` < 1 values in `low`
low <- murder_rate < 1

# Determine the `murder_rate` indices associated with values lower than 1
which(low)



#PART 3. SORTING VECTORS
#INSTRUCTIONS:Use the results from the previous exercise to report the names 
#of the states with homicide rates less than 1, using the square brackets 
#to obtain the names of the states in the data set.

#SOLUTION:

library(dslabs)
data(murders)

# Save the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000

# Save murder_rate < 1 values ​​to low
low <- murder_rate < 1

# Names of states with homicide rates lower than 1
murders$state[low]



#PART 4. FILTERING
#INSTRUCTIONS: We will now use the code from the previous exercises to 
#report states in the Northeast with a homicide rate less than 1.
#Define low as you did above. Use the & operator to create a new ind object 
#that is true when low is true and the state is located in the northeast.
#Use the square brackets [ and ind to name the names of the states
#that satisfy this condition.

#SOLUTION:

library(dslabs)
data(murders)

# Save the homicide rate per 100,000 for each state, in
#`murder_rate`
murder_rate <- murders$total/murders$population * 100000

# Save `murder_rate` values ​​< 1 to `low`
low <- murder_rate < 1


# Create an `ind` vector for states located in the northeast and with rates of
# homicide lower than 1.
ind <- low & (murders$region == "Northeast")
# `ind` state names
murders$state[ind]

#PART 5: FILTERING (CONTINUED)
#INSTRUCTIONS: In a previous exercise we calculated the homicide
#rate for each state and the average of these values.
#How many states are below average?

#SOLUTION:

library(dslabs)
data(murders)

# Save the homicide rate per 100,000 for each state, in
# `murder_rate`
murder_rate <- murders$total/murders$population * 100000

# Calculate the average homicide rate using `mean` and store it in an object
# called `avg`
avg <- mean(murder_rate)

# How many states have homicide rates below average? Count them
# using `sum`
sum(murder_rate < avg)

#PART 6. MATCH
#INSTRUCTIONS:In this exercise we use the match function to identify 
#the states with the abbreviations AK, MI and IA.
#Define a character vector with the abbreviations.
#Start by defining an index of the murders$abb entries that corresponds 
#to the three abbreviations.
#Use the [ operator to extract the states.

#SOLUTION:

library(dslabs)
data(murders)

# Store the 3 abbreviations of interest in a vector named `abbs`
# (remember these are character vectors and require quotes)
abbs <- c("AK", "MI", "IA")
# Match the abbs to the `murders$abb` and store them in `ind`
ind <- match(abbs,murders$abb)

# Use `ind` to retrieve the names of the states
murders$state[ind]

#PART 7: %in%
#INSTRUCTIONS:Which of the following are real abbreviations: MA, ME, MI, MO, MU?
#Define a character vector with the abbreviations MA, ME, MI, MO, MU.
#The character vector must contain the abbreviations in the exact order 
#that they are presented here.
#Use the %in% operator to create a logical vector that is TRUE 
#when the abbreviation is in murders$abb


#SOLUTION:

library(dslabs)
data(murders)

# Save the 5 abbreviations of interest to `abbs`. (remember that they are vectors of
# characters)
abbs <- c("MA", "ME", "MI", "MO","MU")

# Use the %in% operator to check if the `abbs` entries are
# abbreviations in the homicide data frame
abbs %in% murders$abb

#PART 8. LOGICAL OPERATORS
#INSTRUCTIONS:We work again with the characters 
#abbs <- c("MA", "ME", "MI", "MO", "MU")
#Previously we calculated the index abbs%in%murders$abb. 
#Based on that and using the which function and the ! operator,
#get the index of the non-abbreviation abbs entries and store them in "ind".
#Show abbs entries that are not real abbreviations.


#SOLUTION:

library(dslabs)
data(murders)

# Store all 5 abbreviations in `abbs`. (Remember these are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU")

# Use the `which` function and the `!` operator to find out
# which of the indexed abbreviations are not part of the set
# of data and store them in `ind`
ind <- which(!abbs%in%murders$abb)

# Show `abbs` entries that are not real abbreviations
abbs[ind]
#EXERCISE 2.1 : BASIC DATA WRANGLING 

#PART 1: INSTRUCTIONS, DPLYR
#Load the dplyr package and the murders data set.

library(dplyr)
library(dslabs)
data(murders)

#You can add columns using dplyr's mutate function.
#This function takes column names into account, 
#so within the function you can refer to them without quotes like this:

murders <- mutate(murders, population_in_millions = population / 10^6)

#Note that we can write population instead of murders$population. 
#The mutate function knows that we are choosing columns from the murders data set.

#INSTRUCTIONS:Use the mutate function to add a column to murders called rate 
#with the homicide rate per 100,000. Be sure to redefine murders as
#you see in the example code above.

#Note: Remember that the homicide rate is defined as the total number 
#of homicides divided by the population size multiplied by 100,000.

#SOLUTION:
# Redefine `murders` to include a column called `rate`
# with the homicide rate that corresponds to every 100,000
murders <- mutate(murders, rate = total/population * 100000)

#PART 2. INSTRUCTIONS, MUTATE
#Note that if rank(x) gives you the ranks of x from smallest to largest, 
#rank(-x) gives you the ranks from largest to smallest.

#INSTRUCTIONS: Use the mutate function to add a column called rank that 
#contains the rank to murders, from the highest homicide rate to the lowest 
#homicide rate. Be sure to redefine murders.

#SOLUTION:
library(dplyr)
library(dslabs)
data(murders)

# Note that if you want the ranks to be descending,
# you can apply the minus sign (negative) and then compute the ranks
x <- c(88, 100, 83, 92, 94)
rank(-x)

# Defining the rate
rate <- murders$total/ murders$population * 100000

# Redefine `murders` to include a column called `rank`
# with rate ranks from highest to lowest
murders <- mutate(murders, rank=rank(-rate))


#PART 3. INSTRUCTIONS, SELECT
#INSTRUCTIONS: Use select to display state names and murder abbreviations,
#without defining a new object.

#SOLUTION:
library(dplyr)
library(dslabs)
data(murders)

# Use `select` to show only the state names and
# abbreviations from `murders` 
select(murders, state, abb)


#PART 4. INSTRUCTIONS, FILTER
#INSTRUCTIONS: Use filter to show the 5 states with the highest homicide rates.
#After adding the homicide rate and range, do not change the murders data set.
#Just show the result. Note that you can filter based on the rank column.

#SOLUTION:
library(dplyr)
library(dslabs)
data(murders)

# Add necessary columns
murders <- mutate(murders, rate = total/population * 100000, rank = rank(-rate))


# Use `filter` to show the 5 states with the highest homicide rates
filter(murders, rank <= 5)

#PART 5. INSTRUCTIONS, FILTER WITH !=
#INSTRUCTIONS: Create a new data frame called no_south that removes the states 
#from the southern region.
#So, answer the following question: How many states are in this category? 
#You can use the nrow function to find this out.

#SOLUTION:
library(dplyr)
library(dslabs)
data(murders)

# Use `filter` with the != operator to create a new data
# frame without the southern region and call it `no_south`
no_south <- filter(murders, region != "South")

# Use `nrow()` to calculate the number of rows
nrow(no_south)


#PART 6. INSTRCUTIONS, FILTER WITH %IN%
#INSTRUCTIONS: Create a new data frame called murders_nw with only 
#the northeastern and western states.
#Answer the following question: How many states are there in this category?

#SOLUTION:
library(dplyr)
library(dslabs)
data(murders)

# Create a new data frame called `murders_nw` with only
# northeastern and western states
murders_nw <- filter(murders, region %in% c("Northeast", "West"))

# Calculate the number of states (rows) in this category
nrow(murders_nw)


#PART 7. INSTRUCTIONS, FILTERING ACCORDING TO TWO CONDITIONS
#INSTRUCTIONS: Add a homicide rate column and a ranges column as we did above.
#Create a new data frame that satisfies both of the following conditions: 
#the state is in the northeast or west and the homicide rate is less than 1.
#Call it my_states. Use select to display only the state name, rate, and rank.


#SOLUTION:
library(dplyr)
library(dslabs)
data(murders)

# Add rate column
murders <- mutate(murders, rate = total / population * 100000, rank = rank(-rate))

# Create a data frame and call it `my_states` that satisfies both
# conditions, northeast or west and homicide rate less than 1
my_states <- filter(murders, region %in% c("Northeast", "West") & rate < 1)

# Use `select` to display only the state name, the
# murder rate, and rank
select(my_states, state, rate, rank)


#PART 8. INSTRUCTIONS, USING THE PIPE |>
#INSTRUCTIONS: Repeat the previous exercise, but now instead of 
#creating a new object, display the result and only include the status, 
#rate, and range columns in that order. 
#Use a pipe |> to do this in just one line.

#SOLUTION:
library(dplyr)
library(dslabs)
data(murders)

# Define the rate column
murders <- mutate(murders, rate = total / population * 100000, rank = rank(-rate))

# Show the result and only include the state, rate.
# and rank columns on a single line and in that order
filter(murders, region %in% c("Northeast", "West") & rate < 1) |> select(state, rate, rank)


#PART 9. INSTRUCTIONS, MUTATE, FILTER, AND SELECT
#INSTRUCTIONS: Use a single line of code to create a new data frame,
#called my_states, that has homicide rate and rank 
#columns (with the range ordered from highest to lowest),
#considering only states in the northeast or west that have a homicide rate 
#less than 1 and containing only the state, rate, and rank columns. The line 
#must have four components separated by three |> operators:
#The original murders data set
#A reference to mutate to add homicide rate and rank.
#A reference to filter to keep only northeastern or
#western states that have a homicide rate less than 1.
#A reference to select that keeps only the columns 
#with the state name, homicide rate, and rank.
#The line should look like this:
#my_states <- murders |> mutate(…) |> filter(…) |> select(…). 
#The columns in the final data frame MUST be in the order: state, rate, rank.


#SOLUTION:
library(dplyr)
library(dslabs)
data(murders)

# Create a new data frame called `my_states` (according to
# the specifications in the instructions)
my_states <- murders |> mutate(rate =total/population * 100000, rank = rank(-rate)) |> filter(region %in% c("Northeast", "West") & rate < 1) |> select(state, rate, rank)




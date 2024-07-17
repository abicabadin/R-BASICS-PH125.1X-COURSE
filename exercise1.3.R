#EXERCISE 1.3. DATA TYPES

#PART 1. STR
#INSTRUCTIONS: Use the library function to load the dslabs package that 
#includes the murders data set, and then use the str function to see 
#that murders is a data frame with 51 rows and 5 columns 

#SOLUTION:

library(dslabs)

str(murders)

#PART 2. VARIABLE NAMES
#INSTRUCTIONS: Write a line of code that displays the five variable
#names used in the murders data set.

#SOLUTION;

# Load packages and the data set
library(dslabs)
data(murders)

# Use the `names` function to extract the names of the variables
names(murders)

#PART 3. EXAMINING VARIABLES
#INSTRUCTIONS: Use the $ access operator to extract the state name 
#abbreviations and assign them to the a object.
#what kind of object is a?

#SOLUTION:

library(dslabs)
data(murders)

# To access the population variable from the murders data set use this code:
p <- murders$population

# To determine the class of the object `p` we use this code:
class(p)

# Use the access operator to extract state name abbreviations and assign it to `a`
a <- murders$abb

# Determine the class of `a`
class(a)

#PART 4. VARIOUS WAYS TO ACCESS VARIABLES
#INSTRUCTIONS: Use the $ access operator to extract the state name 
#abbreviations and assign them to the a object.
#Use the double square brackets [[ to extract the abbreviations from 
#the state names and assign them to the b object.
#After defining a and b, use the identical function 
#to determine whether a and b are the same.

#SOLUTION:


library(dslabs)
data(murders)
a <- murders$abb

# We extract the population like this:
p <- murders$population

# Here's another way to do the same thing but with the double brackets:
o <- murders[["population"]]

# We can confirm that both objects are the same:
identical(o, p)

# Use square brackets to extract `abb` from `murders` and assign them to `b`
b <- murders[["abb"]]
# Check if `a` and `b` are identical
identical(a, b)


#PART 5. FACTORS
#INSTRUCTIONS: Use the levels and length functions to determine the number of
#regions defined in the murders$region variable.

#SOLUTION:

library(dslabs)
data(murders)

# We can see the class of the region variable using class
class(murders$region)

# Determine the number of regions included in this variable
length(levels(murders$region))

#PART 6. TABLES
#INSTRUCTIONS: Use the table function in one line of code to create a 
#table showing the number of states per region.

#SOLUTION:
library(dslabs)
data(murders)

# The "c" in `c()` is short for "concatenate," 
# which is the action of connecting objects 
# to a string
# The `c()` function connects all the strings 
# into a single vector, which we can assign 
# to `x`
# Here we are simply using `c()` to generate 
# a vector to which we can apply the 
# `table()` function
x <- c("a", "a", "b", "b", "b", "c")

# Here is an example of what the table 
# function does
table(x)

# Write a line of code to display the number 
# of states per region
table(murders$region)

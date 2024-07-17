#EXERCISE 1.4:VECTORS

#PART 1. Numerical Vectors
#INSTRUCTIONS: Use the c() function to create a numerical vector with 
#the average January temperatures for Beijing, Lagos, Paris, Rio de Janeiro,
#San Juan, and Toronto. Temperatures are 
#35, 88, 42, 84, 81 and 30 degrees Fahrenheit. Call the object temp.

#SOLUTION:
# Here is an example on how to create a numerical vector with the costs called cost
cost <- c(50, 75, 90, 100, 150)

# Create a numeric vector to store the temperatures listed in the
# instructions in a vector called temp
# Make sure you follow the same order in the instructions

temp <- c(35, 88, 42,84,81,30)
temp

#PART 2. CHARACTER VECTORS
#INSTRUCTIONS: The temperatures that we keep in temp are from the 
#cities of Beijing, Lagos, Paris, Rio de Janeiro, San Juan and Toronto.

#Create a vector with the name of these cities and call
#the object city. Make sure you use the correct order and spelling.

#SOLUTION:
# Here is an example of how to create a character vector with the example of
#food that we will call food.
food <- c("pizza", "burgers", "salads", "cheese", "pasta")

# Generate a character vector called city to store names
# of cities
# Make sure you follow the same order as in the instructions
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city

#PART 3. CONNECTING NUMERICAL AND CHARACTER VECTORS
#INSTRUCTION: Use the names function and the objects defined in the previous 
#exercises to associate the temperature data with the corresponding city. 
#(You can go back to previous exercises and copy the saved objects.)

#SOLUTION:
# Associate the cost values ​​with their corresponding food
cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food

# This code has been written for you already
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Associate the temperature values ​​with their corresponding city
names(temp) <- city
temp

#PART 4. CREATING SUBSETS OF VECTORS
#INSTRUCTIONS:Write code to access the temperature of 
#the first three cities in the list, stored in temp.

#SOLUTION:

cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
names(temp) <- city

# Cost of the last 3 items on our food list:
cost[3:5]

# Temperatures of the first three cities on the list:
temp[1:3]

#PART 5. CREATING SUBSETS OF VECTORS (CONTINUED)
#INSTRUCTIONS: Use the [ operator to access the temperature of 
#Paris and San Juan stored in the temp object.

#SOLUTION:


cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
names(temp) <- city

# Access the cost of pizza and pasta from our list
cost[c(1,5)]

# Define temp
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
names(temp) <- city

# Access the temperatures of Paris and San Juan
temp[c(3,5)]


#PART 6. SEQUENCES
#INSTRUCTIONS: Use the : operator to create a sequence of consecutive integers
#starting at the number 12 and ending at 73 and store it in an x ​​object.
#Next, determine the size of object x.

#SOLUTION:

# Generate a vector m of integrals that starts at 32 and ends at 99.
m <- 32:99

# Determine the size of the object m.
length(m)

# Generate a vector x of integrals that starts at 12 and ends at 73.
x <- 12:73

# Determine the size of object x.
length(x)

#PART 7. SEQUENCES (CONTINUED)
#INSTRUCTION:Generate a vector of positive odd numbers less than 100. 
#The numbers must be in ascending order.

#SOLUTION:

# Generate a vector with multiples of 7, less than 50.
seq(7, 49, 7)

# Generate a vector containing all odd positive numbers less than
# 100.
# The numbers must be in ascending order.
seq(1,100,2)

#PART 8. SEQUENCES AND LENGTH 
#INSTRUCTIONS: Use only one line of code to determine the length of
#a vector of numbers starting at 6, no more than 55, and 
#in increments of 4/7 (the first three numbers will be 6, 6+4/7, and 6+8/7 ).

#SOLUTION:

# We can create a vector with multiples of 7, less than 50 from the following
#manner
seq(7, 49, 7)

# But note that the second argument does not need to be the last number.
# Simply determines the largest number allowed.
# So the following line of code produces the same vector as seq(7, 49, 7)
seq(7, 50, 7)

# Generate a sequence of numbers from 6 to 55, in increments of 4/7 and determine
# its size.
length(seq(6,55,4/7))


#PART 9. SEQUENCES OF CERTAIN LENGTH
#INSTRUCTION: Determine the class of a vector generated with seq using 
#the length.out argument. Specifically, what is the class of the 
#following object a <- seq(1, 10, length.out = 100)?

#SOLUTION:

# Save the sequence in an object a
a <- seq(1,10, length.out =100)

# Determine the class of a
class(a)

#PART 10. WHOLE NUMBERS
#INSTRUCTION: What is the class of the following object a <- seq(1, 10)?

#SOLUTION:

# Save the sequence in an object a
a <- seq(1,10)

# Determine the class of a
class(a)

#PART 11. WHOLE NUMBERS AND NUMERICALS
#INSTRUCTION: Confirm that the class class of 1 is numeric and 
#that the class class of 1L is integer.

#SOLUTION:

# Check the class of 1, assigned to the object a
class(1)

# Confirm that the class of 1L is an integer
class(1L)


#PART 12. COERCION
#INSTRUCTION:Define the following vector: x <- c(1, 3, 5,"a"). 
#Note that x has been forced to be a string of characters. 
#Use the as.numeric() function to redefine (convert) x to a 
#vector of numbers instead of a vector of characters.
#Note: an alert message will appear, but that's okay!

#SOLUTION:

# Define the vector x
x <- c(1, 3, 5,"a")

# Note that x is a character vector
x

# Use `as.numeric()` to redefine `x` as a numeric vector
# You will get a warning message but that's okay!
x <- as.numeric(x)

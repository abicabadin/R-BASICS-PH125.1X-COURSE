#EXERCISE 3.2: FOR LOOPS 

#PART 1. FOR LOOPS
#INSTRUCTIONS: Write a function compute_s_n that for any given n computes the 
#sum: Sn = 1^2 + 2^2 +3^2 + ... + n^2
#Report the value of the sum when n = 10.

#SOLUTION:
# Here is an example of a function that adds the numbers from 1 to n
example_func <- function(n){
  sum(1:n)
}

# Here is the sum of the first 100 numbers
example_func(100)

# Create a function `compute_s_n` with a a parameter `n`
# that for any value of `n` calculates the sum of
# 1 + 2^2 + ...+ n^2
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Calculate the value of the sum when n=10
compute_s_n(10)

#PART 2. FOR LOOPS CONTINUED
#INSTRUCTIONS: Define an empty numeric vector s_n of size 25
#using s_n <- vector("numeric", 25).
#Compute the sum of the squares when n
#n is equal to each integer from 1 to 25 using the function we 
#defined in the previous exercise: compute_s_n. Save the results in s_n.

#sOLUTION:
# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define an empty numeric vector `s_n` of size 25
s_n <- vector("numeric",25)

# Calculate the sum when `n` is equal to each integer from 1 to 25
# using the `compute_s_n` function
for(i in 1:25){
  s_n[i] <- compute_s_n(i)
}

#PART 3. CHECKING OUR CALCULATIONS
#INSTRUCTIONS: We define n <- 1:25. Note that with this we can use for(i in n).
#After running a for-loop to store the sums 
#in a vector s_n <- vector("numeric", 25) plot s_n 
#(on the y-axis) against n (on the x-axis).

#SOLUTION:
# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define the vector `n`
n <- 1:25

# Define the vector to store data
s_n <- vector("numeric", 25)

# Calculate the sum when `n` is equal to each integer from 1 to 25
# using the `compute_s_n` function
for(i in n){
  s_n[i] <- compute_s_n(i)
}

# Create the plot with `s_n` (on the y axis) against `n` (on the x axis)
plot(n,s_n)

#PART 4: CHECKING OUR CALCULATIONS
#INSTRUCTIONS: Confirm that s_n and n(n+1)(2n+1)/6 are equal using 
#the identical command.

#SOLUTION:
# Define a function and save it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define the vector `n`
n <- 1:25

# Define the vector to store data
s_n <- vector("numeric", 25)

# Calculate the sum when `n` is equal to each integer from 1 to 25
# using the `compute_s_n` function
for(i in n){
  s_n[i] <- compute_s_n(i)
}

# Verify that `s_n` is identical to the formula given in the instructions.
identical(s_n, n*(n+1)*(2*n+1)/6)

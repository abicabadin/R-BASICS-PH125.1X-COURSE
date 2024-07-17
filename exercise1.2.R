#EXERCISE 1.2: R BASICS

#PART 1. USING VARIABLES 1
#INSTRUCTIONS: Set n <- 100.
#Write code to calculate the sum of the first n integers 
#(in this case, the integers 1 to 100) using the formula n(n+1)/2.

#SOLUTION:

# This is how to calculate the sum of the first 20 integers
20*(20+1)/2

# However, we can also define a variable to use the formula with
#other values ​​for n
n <- 20
n*(n+1)/2

n <- 25
n*(n+1)/2

# Next write the code to calculate the sum of the first 100
#integer numbers
n <- 100
n*(n+1)/2

#PART 2. USING VARIABLES 2
#INSTRUCTIONS: Write two lines of code to get the result: 
#one defining n and the other with the formula.

#SOLUTION: 

# Write the code to calculate the sum of the first 1000 integers
n <- 1000
n*(n+1)/2


#PART 3. FUNCTIONS
#INSTRUCTIONS: Compute the sum of the integers 1 to 1,000 
#using the seq and sum functions.

#SOLUTION:

# Calculate the sum of integers from 1 to 1000 using
# the `seq` and `sum` functions.
n <- 1000
x <- seq(1,n)
sum(x)


#PART 4. NESTED FUNCTIONS 1
#INSTRUCTIONS: Use one line of code to calculate the logarithm,
#to base 10, of the square root of 100. 
#Make sure your code includes the log10 and sqrt functions.

#SOLUTION:

# logarithm base 2 of 16
log2(16)

# square root (sqrt) of the base 2 
# logarithm (log2) of 16:
sqrt(log2(16))

# Calculate the logarithm base 10 (log10) of the 
# square root of 100. Do not use variables.
log10(sqrt(100))


#PART 5. NESTED FUNCTIONS 2
#INSTRUCTIONS:One of the following lines of code will always return the value stored in x if x is a numeric variable.
#log(10^x)
#log10(x^10)
#log(exp(x))
#exp(log(x, base = 2))
#Write the line for the correct option.

#SOLUTION:
# We declare `x`
x <- -1

# Use the option of the four provided in the instructions
# that will always return the value stored in `x`
log(exp(x))
#EXERCISE 3.1 : PROGRAMMING  BASICS

#PART 1.1 CONDITIONALS 1
#INSTRUCTIONS: Run the following code in the console.
x <- c(1,2,-3,4)
if(all(x>0)){
  print("All of the numbers are positive.")
} else{
  print("Not all of them are positive.")
}
# Modify the code below to return "At least one number is positive"
# if that is the case or "No number is positive" otherwise.

#SOLUTION:
x <- c(1,2,-3,4)

if(any(x>0)){
  print("At least one number is positive")
} else{
  print("No numbers are positive")
}
#SOLUTION:

#PART 1.2. CONDITIONALS 2
#INSTRUCTIONS: Define a variable x as a vector of logics. For example:
x <- c(TRUE, FALSE, FALSE, TRUE, FALSE)
#Write a line of code using the function any returns FALSE when x 
#has at least one true. You can try examples in the R console.

#SOLUTION:
# Define a variable `x` as a vector of logics with at least
# two elements. For example:
# x <- c(TRUE, FALSE, FALSE, TRUE, FALSE)`

x <- c(TRUE, FALSE, FALSE, TRUE, FALSE)

# Write a line of code using the `any` function that returns
# FALSE when at least one element in `x` is TRUE.

!any(x)

#PART 1.3. CONDITIONALS 3
#INSTRUCTIONS: Define a variable x as a vector of logics. For example:
#x <- c(TRUE, FALSE, FALSE, TRUE, FALSE)
#Write a line of code using the function all returns TRUE 
#when x contains only false. You can try examples in the R console.

#SOLUTION:
# Define a variable `x` as a vector of logics with at least
# two elements. For example:
# `x <- c(TRUE, FALSE, FALSE, TRUE, FALSE)`
x <- c(TRUE, FALSE, FALSE, TRUE, FALSE)

# Write a line of code using the `all` function that returns
# TRUE when `x` contains only FALSE elements .
all(!x)

#PART 2. IFELSE
#INSTRUCTIONS: Use the ifelse function to write a line of code that 
#assigns the new_names object the state abbreviation when the state name 
#is more than 8 characters and that assigns the state name when the name is
#8 characters or less. For example, if the original vector has Massachusetts 
#(13 characters), the new vector must be MA. But if the original vector is
#Michigan (8 characters), the new vector should also be Michigan.

#SOLUTION:
library(dslabs)
data(murders)

# Use the `ifelse` function to write a line of code that assigns the
# state abbreviation when the state name is longer than 8 characters
# or the full state name otherwise to an object named `new_names`.
new_names <- ifelse(nchar(murders$state)>8, murders$abb, murders$state)


#PART 3. DEFINING FUNCTIONS 1
#INSTRUCTIONS: Define a function that for any given value, 
#let's say n, calculates the sum of the integers from 1 to n by
#creating a vector and then using the sum function. 
#Use the name sum_n for the function you define.
#Use the function you just defined to determine the sum of the integers 1 to 5000.

#SOLUTION:
# Create the function called `sum_n`

sum_n <- function(n){
  n <- sum(1:n)
  return(n)
}

# Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)

#PART 4. DEFINING FUNCTIONS 2
#INSTRUCTIONS: Create a function altman_plot that takes two arguments x and y 
#and plots y-x (on the y-axis) against x+y (on the x-axis).

#Be careful: do not use parentheses around the arguments
#in the plot function because it will confuse R.

#Feel free to invoke the altman_plot  function
#(e.g., type something like altman_plot(10,20)) to see the generated plot!

#SOLUTION:
# Fill in the missing code to create the `altman_plot` function
# that in takes two arguments, x and y, and plots y-x (on the y axis)
# against x+y (on the x axis).

altman_plot <- function(x,y){
  plot(x+y,x,y)
  return(NULL)
}


#PAQRT 5 NAMESPACES
#INSTRUCTIONS: After running the following code, what is the value of x?
x <- 3
my_func <- function(y){
  x <- 5
  y
  print(x)
}
my_func(x)

#SOLUTION:
# Type the number that will result when calling the code presented
# in the instructions
x <- 3
my_func <- function(y){
  x <- 5
  y
  print(x)
}
my_func(x)

print(x)
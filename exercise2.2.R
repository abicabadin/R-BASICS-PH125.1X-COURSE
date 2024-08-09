#EXERCISE 2.2: SUMMARIZING WITH DPLYR


#PART 1. BLOOD PRESSURE 1
#INSTRUCTIONS:Filter the NHANES data set to include exclusively women between 
#20 and 29 years old. Assign this new data frame to the tab object.

#SOLUTION:
library(dplyr)
library(NHANES)

# Fill in the missing parts in the following line of code
tab <- NHANES %>% filter(AgeDecade == " 20-29" & Gender == "female")


#PART 2. BLOOD PRESSURE 2 
#INSTRUCTIONS:Complete the line of code to save the average and 
#standard deviation of systolic blood pressure to average and 
#standard_deviation, respectively, using the summarize function 
#after filtering appropriately. Save the result in an object called ref.

#SOLUTION:
library(dplyr)
library(NHANES)
data(NHANES)

# Fill in the missing parts in the following line of code
ref <- NHANES %>%
  filter(AgeDecade == " 20-29" & Gender == "female") %>%
  summarize(average = mean(BPSysAve, na.rm=TRUE), standard_deviation = sd(BPSysAve, na.rm=TRUE))


#PART 3. SUMMARIZING AVERAGES
#INSTRUCTIONS:Modify the line of code to assign the average 
#to a numeric variable called ref_avg using pull.

#SOLUTION:
library(dplyr)
library(NHANES)

# Fill in the missing part to extract the average
ref_avg <- NHANES %>%
  filter(AgeDecade == " 20-29" & Gender == "female") %>%
  summarize(average = mean(BPSysAve, na.rm = TRUE), standard_deviation = sd(BPSysAve, na.rm=TRUE)) %>% .$average

#PART 4. MIN AND MAX
#INSTRUCTIONS:Report the minimum and maximum value for the group of women 
#aged 20-29 years. Again, use filter and summarize connected by the pipe |>.
#The min and max functions can be used to get the values you want. 
#Inside summarize, save the minimum and maximum value of systolic
#blood pressure as minbp and maxbp.

#SOLUTION:
library(dplyr)
library(NHANES)

# Complete the following code and report the minimum and maximum value for the
# group of women aged 20-29 years. Again, use filter and summarize connected
# through the pipe |>. The min and max functions can be used to obtain the
# values ​​you want. Inside summarize, save the minimum and maximum value of the
# systolic blood pressure as minbp and maxbp.
NHANES %>%
  filter(AgeDecade == " 20-29" & Gender == "female") %>%
  summarize(minbp = min(BPSysAve, na.rm = TRUE), maxbp = max(BPSysAve, na.rm = TRUE))

#PART 5. GROUP_BY
#INSTRUCTIONS: Use the filter, group_by, summarize, and pipe |> functions to
#calculate the mean and standard deviation of systolic blood pressure for women
#in each age group separately. Within summarize, save the average and standard 
#deviation of systolic blood pressure (BPSysAve) as average and 
#standard_deviation, respectively.


#SOLUTION:
library(dplyr)
library(NHANES)
data(NHANES)

# Complete the following code, use the filter, group_by, summarize and
# the pipe |> to calculate the average and standard deviation of the systolic
# blood pressure for women in each age group separately.
# Inside summarize, save the mean and standard deviation of the
# systolic blood pressure (BPSysAve) as average and standard_deviation,
# respectively.
NHANES %>%
  filter(Gender == "female") %>%
  group_by(AgeDecade) %>%
  summarize(average = mean(BPSysAve, na.rm = TRUE),
            standard_deviation = sd(BPSysAve, na.rm = TRUE)) %>%
  .[complete.cases(.),]

#PART 6. GROUP_BY EXAMPLE 2
#INSTRUCTIONS: Calculate the mean and standard deviation of systolic
#blood pressure for men in each age group separately, using the same methods 
#as in the previous exercise. Save the average and standard deviation of 
#systolic blood pressure (BPSysAve) as average and standard_deviation,
#respectively.


#SOLUTION:
library(dplyr)
library(NHANES)

# Calculate the mean and standard deviation of systolic blood pressure
# for men in each age group separately, using the same
# methods than in the previous exercise. Save the average and deviation
# standard systolic blood pressure (BPSysAve) as average and
# standard_deviation, respectively.
NHANES %>%
  filter(Gender == "male") %>%
  group_by(AgeDecade) %>%
  summarize(average = mean(BPSysAve, na.rm = TRUE), standard_deviation = sd(BPSysAve, na.rm=TRUE))


#PART 7. GROUP_BY EXAMPLE 3
#INSTRUCTIONS: Create a single summary table for the mean and standard 
#deviation of systolic blood pressure using group_by(AgeDecade, Gender). 
#Your code within summarize should remain the same as in the previous 
#exercises and should use the variable names average and standard_deviation.


#SOLUTION:
library(dplyr)
library(NHANES)

# Fill in the missing code, create a single summary table for the average
# and standard deviation of systolic blood pressure using group_by
# (AgeDecade, Gender). Your code inside summarize should stay the same as
# in the previous exercises and you must use the names average and
# standard_deviation of the variables.

NHANES %>%
  group_by(AgeDecade, Gender) %>%
  summarize(average = mean(BPSysAve, na.rm = TRUE) , standard_deviation = sd(BPSysAve, na.rm = TRUE))


#PART 8. ARRANGE
#INSTRUCTIONS: Calculate the mean and standard deviation for each of the Race1 
#entries for men in the decade ages 40 to 49. Remember that this age group 
#is coded 40-49, which includes a space before 40. Sort the resulting table 
#from the lowest average to the highest average systolic blood pressure.
#Use the filter, group_by, summarize, arrange, and pipe |> functions to 
#do this in a single line of code. Within summarize, save the average and 
#standard deviation of systolic blood pressure as average and standard_deviation.


#SOLUTION:
library(dplyr)
library(NHANES)

# Calculate the mean and standard deviation for each of the inputs
# of Race1 for men in the decade between the ages of 40 and 49. Remember
# that this age group is coded 40-49, which includes a space
# before 40. Sort the resulting table from the lowest average to the
# highest average systolic blood pressure. Use the filter functions,
# group_by, summarize, arrange and the pipe |> to do this in a single line
# of code. Inside summarize, save the mean and standard deviation
# of systolic blood pressure as average and standard_deviation.
NHANES %>% filter(Gender == "male", AgeDecade == " 40-49") %>%
  group_by(Race1) %>%
  summarize(average = mean(BPSysAve, na.rm = TRUE), 
            standard_deviation = sd(BPSysAve, na.rm=TRUE)) %>%
  arrange(average)
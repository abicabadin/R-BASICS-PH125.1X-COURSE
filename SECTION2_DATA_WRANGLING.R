#BASIC DATA WRANGLING

#installing and loading the dplyr package
install.packages("dplyr")
library(dplyr)

# adding a column with mutate
library(dslabs)
data("murders")
murders <- mutate(murders, rate = total / population * 100000)

# subsetting with filter
filter(murders, rate <= 0.71)

# selecting columns with select
new_table <- select(murders, state, region, rate)

# using the pipe
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)

# creating a data frame with stringAsFactors = FALSE
grades <- data.frame(names = c("John", "Juan", "Jean", "Yao"), 
                     exam_1 = c(95, 80, 90, 85), 
                     exam_2 = c(90, 85, 85, 90),
                     stringsAsFactors = FALSE)


#SUMMARIZING WITH DPPLYR
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

# minimum, median, and maximum murder rate for the states in the West region
s <- murders %>% 
  filter(region == "West") %>%
  summarize(minimum = min(rate), 
            median = median(rate), 
            maximum = max(rate))
s

# accessing the components with the accessor $
s$median
s$maximum

# average rate unadjusted by population size
mean(murders$rate)

# average rate adjusted by population size
us_murder_rate <- murders %>% 
  summarize(rate = sum(total) / sum(population) * 10^5)
us_murder_rate

#SUMMARIZING WITH MORE THAN ONE VALUE
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

# minimum, median, and maximum murder rate for the states in the West region using quantile
# note that this returns a vector
murders %>% 
  filter(region == "West") %>%
  summarize(range = quantile(rate, c(0, 0.5, 1)))

# returning minimum, median, and maximum as a data frame
my_quantile <- function(x){
  r <-  quantile(x, c(0, 0.5, 1))
  data.frame(minimum = r[1], median = r[2], maximum = r[3]) 
}
murders %>% 
  filter(region == "West") %>%
  summarize(my_quantile(rate))


#PULL TO ACCESSS COLUMNS
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

# average rate adjusted by population size
us_murder_rate <- murders %>% 
  summarize(rate = sum(total) / sum(population) * 10^5)
us_murder_rate

# us_murder_rate is stored as a data frame
class(us_murder_rate)

# the pull function can return it as a numeric value
us_murder_rate %>% pull(rate)

# using pull to save the number directly
us_murder_rate <- murders %>% 
  summarize(rate = sum(total) / sum(population) * 10^5) %>%
  pull(rate)
us_murder_rate

# us_murder_rate is now stored as a number
class(us_murder_rate) 

#the dot placer
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

# average rate adjusted by population size
us_murder_rate <- murders %>% 
  summarize(rate = sum(total) / sum(population) * 10^5)
us_murder_rate

# using the dot to access the rate
us_murder_rate <- murders %>% 
  summarize(rate = sum(total) / sum(population) * 10^5) %>%
  .$rate
us_murder_rate
class(us_murder_rate)

#group then summarize
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

# group by region
murders %>% group_by(region)

# summarize after grouping
murders %>% 
  group_by(region) %>%
  summarize(median = median(rate))

#SORTING DATA TABLES
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

# order the states by population size
murders %>% arrange(population) %>% head()

# order the states by murder rate - the default is ascending order
murders %>% arrange(rate) %>% head()

# order the states by murder rate in descending order
murders %>% arrange(desc(rate)) %>% head()

# order the states by region and then by murder rate within region
murders %>% arrange(region, rate) %>% head()

# return the top 10 states by murder rate
murders %>% top_n(10, rate)

# return the top 10 states ranked by murder rate, sorted by murder rate
murders %>% arrange(desc(rate)) %>% top_n(10)

#INTRODUCTION TO DATA.TABLE
# install the data.table package before you use it!
install.packages("data.table")

# load data.table package
library(data.table)

# load other packages and datasets
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)

# convert the data frame into a data.table object
murders <- setDT(murders)

# selecting in dplyr
select(murders, state, region)

# selecting in data.table - 2 methods
murders[, c("state", "region")] |> head()
murders[, .(state, region)] |> head()

# adding or changing a column in dplyr
murders <- mutate(murders, rate = total / population * 10^5)

# adding or changing a column in data.table
murders[, rate := total / population * 100000]
head(murders)
murders[, ":="(rate = total / population * 100000, rank = rank(population))]

# y is referring to x and := changes by reference
x <- data.table(a = 1)
y <- x

x[,a := 2]
y

y[,a := 1]
x

# use copy to make an actual copy
x <- data.table(a = 1)
y <- copy(x)
x[,a := 2]
y

#SUBSETTING WITH DATA.TABLE
# load packages and prepare the data
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
library(data.table)
murders <- setDT(murders)
murders <- mutate(murders, rate = total / population * 10^5)
murders[, rate := total / population * 100000]

# subsetting in dplyr
filter(murders, rate <= 0.7)

# subsetting in data.table
murders[rate <= 0.7]

# combining filter and select in data.table
murders[rate <= 0.7, .(state, rate)]

# combining filter and select in dplyr
murders %>% filter(rate <= 0.7) %>% select(state, rate)

#SUMMARIZING WITH DATA.TABLE.
# load packages and prepare the data - heights dataset
library(tidyverse)
library(dplyr)
library(dslabs)
data(heights)
heights <- setDT(heights)

# summarizing in dplyr
s <- heights %>% 
  summarize(average = mean(height), standard_deviation = sd(height))

# summarizing in data.table
s <- heights[, .(average = mean(height), standard_deviation = sd(height))]

# subsetting and then summarizing in dplyr
s <- heights %>% 
  filter(sex == "Female") %>%
  summarize(average = mean(height), standard_deviation = sd(height))

# subsetting and then summarizing in data.table
s <- heights[sex == "Female", .(average = mean(height), standard_deviation = sd(height))]

# previously defined function
median_min_max <- function(x){
  qs <- quantile(x, c(0.5, 0, 1))
  data.frame(median = qs[1], minimum = qs[2], maximum = qs[3])
}

# multiple summaries in data.table
heights[, .(median_min_max(height))]

# grouping then summarizing in data.table
heights[, .(average = mean(height), standard_deviation = sd(height)), by = sex]


#SORTING DATA FRAMES
# load packages and datasets and prepare the data
library(tidyverse)
library(dplyr)
library(data.table)
library(dslabs)
data(murders)
murders <- setDT(murders)
murders[, rate := total / population * 100000]

# order by population
murders[order(population)] |> head()

# order by population in descending order
murders[order(population, decreasing = TRUE)] 

# order by region and then murder rate
murders[order(region, rate)]

#TIBBLE
view the dataset
murders %>% group_by(region)

# see the class
murders %>% group_by(region) %>% class()

# compare the print output of a regular data frame to a tibble
gapminder
as_tibble(gapminder)

# compare subsetting a regular data frame and a tibble
class(murders[,1])
class(as_tibble(murders)[,1])

# access a column vector not as a tibble using $
class(as_tibble(murders)$state)

# compare what happens when accessing a column that doesn't exist in a regular data frame to in a tibble
murders$State
as_tibble(murders)$State

# create a tibble
tibble(id = c(1, 2, 3), func = c(mean, median, sd))

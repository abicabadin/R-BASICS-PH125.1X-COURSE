#EXERCISE 4.5: Importing Data
#PART 1. READ A CSV
#INSTRUCTION:The following code provides you with the full path to the 
#spreadsheet saved in a CSV file.

path <- system.file("extdata/murders.csv", package = "dslabs")

#Write code to read that file into a data frame in R called dat.

#SOLUTION
# The following code provides you with the full path to the spreadsheet saved in a CSV file.

path <- system.file("extdata/murders.csv", package = "dslabs")

# Write the code to read that file into a data frame in R named `dat`.
library(readr)
dat <- read.csv(path)


#PART 2. READ AN XLS
#INSTRUCTION: The following code provides the full path to a spreadsheet saved in an XLS file.

path <- system.file("extdata/2010_bigfive_regents.xls", package = "dslabs")

#Write code to read that file into a data frame in R called dat.
#SOLUTION:
# The following code provides the full path to a spreadsheet saved in an XLS file.

path <- system.file("extdata/2010_bigfive_regents.xls", package = "dslabs")

# Write the code to read that file into a data frame in R named `dat`.
library(readxl)
dat <- read_xls(path)

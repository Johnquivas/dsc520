# Assignment: EXERCISE 5.2
# Name: Quintero Vasquez, Johnatan
# Date: 2023-07-09

## Install dplyr package
install.packages("dplyr")

## Load dplyr package
library(dplyr)

## Set the working directory to the root of your DSC 520 directory
setwd("C:/Users/21428899/OneDrive-Bellevue University/Documents/GitHub/dsc520")

## Load the `data/Scores.csv` to
Test_scores <- read.csv("data/scores.csv")


## Apply group_by function
grouped <- group_by(Test_scores, Section)

## Apply summarize function
summarize(grouped, avr = mean(Score))

## Apply mutate function
mutate(Test_scores, Count_Score = Count + Score)

## Apply filter function
filter(Test_scores, Count == 10)

## Apply select function
select(Test_scores, c(Count, Score))

## Apply arrange function
arrange(Test_scores, Score)

## Load purrr package
library(purrr)

## Using the purrr package – perform 2 functions on your dataset
Test_scores %>% map_dbl(mean)
Test_scores %>% map_lgl(is.numeric)

# Using cbind on dataset
numeracion <-  1:38
Test_scores <- cbind(Test_scores, numeracion)

# Using rbind on dataset
Newr <-  c(30, 310, "Sports", 39)
Test_scores <- rbind(Test_scores, Newr)

## Split a string, then concatenate the results back together
Positions <- paste(Test_scores$numeracion, Test_scores$Score, sep = "--")
Positions
strsplit(Positions, split="--")


### knitr::stitch("C:\\Users\\21428899\\OneDrive-Bellevue University\\Documents\\GitHub\\dsc520\\Exercise 5.2\\Exercise_Week_5_Quintero_Vasquez_Johnatan.R")

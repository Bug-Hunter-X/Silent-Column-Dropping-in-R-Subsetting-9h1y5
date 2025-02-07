# Silent Column Dropping in R Subsetting

This repository demonstrates a common yet subtle bug in R involving the subsetting of data frames using character vectors. When attempting to select columns that don't exist, R silently drops them without issuing any warnings or errors, leading to potentially unexpected and difficult-to-debug behavior.

## The Bug
The `bug.r` file contains code that illustrates the issue.  It attempts to subset a data frame using a character vector containing column names, some of which do not exist in the data frame.

## The Solution
The `bugSolution.r` file presents a solution using the `dplyr` package to provide a more explicit and safer method of subsetting data frames.  It demonstrates how to effectively check for the existence of columns before attempting subsetting, thus providing robust error handling.

This example highlights the importance of careful column name handling in R, and how utilizing libraries like `dplyr` can aid in more reliable data manipulation.
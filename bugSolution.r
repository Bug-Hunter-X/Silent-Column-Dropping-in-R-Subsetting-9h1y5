```r
# This code uses dplyr to safely subset the data frame.
# If a specified column doesn't exist, an error is thrown.

library(dplyr)

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_select <- c("a", "d", "e")

# Attempt to select columns using dplyr; throws an error if columns don't exist
tryCatch({
  subset_df <- df %>% select(all_of(cols_to_select))
}, error = function(e) {
  print(paste("Error:", e))
  # Handle the error appropriately, such as by returning NULL or throwing a more informative custom error
})
```
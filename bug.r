```r
# This code attempts to subset a data frame using a character vector
# that contains non-existent column names.

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_select <- c("a", "d", "e")
subset_df <- df[, cols_toselect]
```
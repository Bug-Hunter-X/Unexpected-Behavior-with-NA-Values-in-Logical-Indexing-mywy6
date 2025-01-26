```R
# Example demonstrating unexpected behavior with logical indexing and NA values

my_vector <- c(1, NA, 3, NA, 5)

# Expected: logical vector indicating NA values
is_na <- is.na(my_vector)
print(is_na) # TRUE FALSE TRUE FALSE TRUE

# Unexpected: Subsetting with is_na gives incorrect results
result <- my_vector[is_na]
print(result) # NA NA 

# Expected: my_vector[!is.na(my_vector)] should give the non-NA elements
result2 <- my_vector[!is.na(my_vector)]
print(result2) # 1 3 5

#Further demonstration of NA issues
data <- data.frame(a = c(1,2,NA,4), b = c(5,NA,7,8))

# Incorrect way to handle NAs that leads to unexpected results
data[!is.na(data$a),] # Removes rows with NA in column 'a', but not in 'b'

#Correct way to handle NAs by using complete.cases
data[complete.cases(data),]
```
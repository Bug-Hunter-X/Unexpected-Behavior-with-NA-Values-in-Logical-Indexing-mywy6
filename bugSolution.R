```R
# Example demonstrating correct handling of NA values

my_vector <- c(1, NA, 3, NA, 5)

# Correct way to select non-NA elements
result <- my_vector[!is.na(my_vector)]
print(result)  # 1 3 5

# Handling NA values in data frames using complete.cases()
data <- data.frame(a = c(1,2,NA,4), b = c(5,NA,7,8))

#Correct way to handle NAs by using complete.cases
cleaned_data <- data[complete.cases(data),]
print(cleaned_data) #This removes all rows with any NAs.

#Alternative approach for handling NAs if you want to keep rows with some NAs
data_with_na_handled <- data
data_with_na_handled$a[is.na(data_with_na_handled$a)] <- 0 #Replacing NA with 0. You can use other methods such as imputation.
print(data_with_na_handled)
```
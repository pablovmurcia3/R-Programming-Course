library(swirl)
swirl()

ls() # variables in the workspace

class(plants)

dim(plants)

nrow(plants)

ncol(plants)

object.size(plants) # how much space the dataset is occupying in memory

names(plants)

head(plants)

head(plants, 10)

tail(plants, 15)

summary(plants)
#  summary() provides different output for each variable, depending on its class.
# For numeric data such as Precip_Min, summary() displays the minimum, 1st
# quartile, median, mean, 3rd quartile, and maximum. These values help us
# understand how the data are distributed.

# For categorical variables (called 'factor' variables in R), summary() displays
# the number of times each value (or 'level') occurs in the data.

table(plants$Active_Growth_Period) # Since it is a categorical/factor variable,
# we can see how many times each value actually occurs in the data

str(plants)
# The beauty of str() is that it combines many of the features of the other
# functions you've already seen, all in a concise and readable format. At the
# very top, it tells us that the class of plants is 'data.frame' and that it has
# 5166 observations and 10 variables. It then gives us the name and class of each
# variable, as well as a preview of its contents.


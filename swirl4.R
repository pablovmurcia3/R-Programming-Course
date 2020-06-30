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

##############################################################################

?sample

sample(1:6, 4, replace = TRUE)

sample(1:20, 10)

LETTERS

sample(LETTERS)
# When the 'size' argument to sample() is not specified, R takes a
# sample equal in size to the vector from which you are sampling

flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7)) # the coin is unfair, we must 
# attach specific probabilities to the values

flips

sum(flips)

?rbinom

rbinom(1, 100, 0.7)
# A binomial random variable represents the number of 'successes' (heads) in a
# given number of independent 'trials' (coin flips). Therefore, we can generate a
# single random variable that represents the number of heads in 100 flips of our
# unfair coin using rbinom(1, size = 100, prob = 0.7). Note that you only specify
# the probability of 'success' (heads) and NOT the probability of 'failure'
# (tails). Try it now.


flips2 <- rbinom(100, 1, 0.7)
# if we want to see all of the 0s and 1s, we can request 100
# observations, each of size 1, with success probability of 0.7. 

sum(flips2)
flips2

?rnorm

rnorm(10)

rnorm(10, 100, 25)

?rpois 

rpois(5, 10)

my_pois <- replicate(100, rpois(5, 10))

my_pois # replicate() created a matrix, each column of which contains 5 random 
# numbers generated from a Poisson distribution with mean 10

cm <- colMeans(my_pois)

hist(cm)
# Looks like our column means are almost normally distributed, right? That's the
# Central Limit Theorem at work
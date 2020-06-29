################################################################################
                                    # WEEK 4 #
###############################################################################

# Simulation - Generating Random Numbers


# R comes with a set of pseuodo-random number generators that allow you to 
# simulate from wellknown probability distributions like the Normal, Poisson,
# and binomial

# For each probability distribution there are typically four functions available 
# that start with a “r”, “d”, “p”, and “q”. The “r” function is the one that
# actually simulates randon numbers from that distribution. The other functions
# are prefixed with a
# d for density 
# r for random number generation 
# p for cumulative distribution 
# q for quantile function (inverse cumulative distribution)

dnorm(x, mean = 0, sd = 1, log = FALSE) 
pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE) 
qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE) 
rnorm(n, mean = 0, sd = 1)


x <- rnorm(10)
x

x <- rnorm(10, 20, 2)
x




# Important: settig the random number seed 

set.seed(1) # to generate the same seet of random numbers
rnorm(5)

rnorm(5)

set.seed(1) # kind of setes the sequence of random variable thats going to occur
rnorm(5) # the same as first

# useful to reproduce the random numbers
# In general, you should always set the random number seed when conducting a 
# simulation! 

rpois(10,1)

rpois(10,2)

rpois(10,20)


# evaluate the cumulative distribution

ppois(2,2) ## Pr(x <= 2)
ppois(4,2) ## Pr( x <= 4)
ppois(6,2) ## Pr( x <= 6)

# in a test
pnorm(1.96, lower.tail = FALSE) # gives the p-value
qnorm(0.025, lower.tail = FALSE) # gives the t-statistic

###############################################################################

# Simulating a linear model 

set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2*x + e 
summary(y)

plot(x,y)


# slight variation
# x is a binary random variablo 

set.seed(10)
x <- rbinom(100, 1, 0.5)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2*x + e 
summary(y)
plot(x,y)

#  Poisson regresion

set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3 * x 
y <- rpois(100, exp(log.mu)) 
summary(y)
plot(x,y)

##############################################################################

# Random Samplin

# draw random sample from a vector of numbers
str(sample)
set.seed(1)
sample(1:10, 4) #Without replacement
sample(1:10, 4)
sample(LETTERS, 5)
sample(1:10) # if no specify the size, it gives a permutation
sample(1:10)


sample(1:10, replace = TRUE) # With replacement

sample (rnorm(100), 50)

# To sample more complicated things, such as rows from a data frame or a list,
# you can sample the indices into an object rather than the elements of the 
# object itself. 

data(airquality) 
str(airquality)

set.seed(20) 
## Create index vector 
idx <- seq_len(nrow(airquality))
idx
samp <- sample(idx, 6) 
airquality[samp, ] 

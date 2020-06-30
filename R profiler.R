################################################################################
                                      # WEEK 4 #
###############################################################################

# R Profiler

# Questions: why is my code so slow?
# Profiler!
# Useful to optimize your code -- is better tha guessing 

# tips:

# design first, then optimize 
# optimize --- first collect some data --- PROFILING


# Of course, when it comes to optimizing code, the question is what should you 
# optimize? Well, clearly should optimize the parts of your code that are 
# running slowly, but how do we know what parts those are? 




# system.time()
# They system.time() function takes an arbitrary R expression as input (can be
# wrapped in curly braces) and returns the amount of time taken to evaluate the 
# expression
# time in seconds

# user time:  time charged to the CPU(s) for this expression 
# elapse time: wall clock time, the amount of time that passes for you as 
# youre sitting there
# they can differ!!!!

#  an example of where the elapsed time is greater than the user time.

# Elapsed time > user time
system.time(readLines("http://www.jhsph.edu")) 

# The elapsed time may be smaller than the user time if your machine has
# multiple cores/processors (and is capable of using them). For example, 
# multi-threaded BLAS libraries (vecLib/Accelerate, ATLAS, ACML, MKL) can 
# greatly speed up linear algebra calculations and are commonly installed 
# on even desktop systems these days

# Elapsed time < user time 
hilbert <- function(n) {
  i <- 1:n 
  1 / outer(i - 1, i, "+") 
  } 
x <- hilbert(1000) 
system.time(svd(x)) 

# You can time longer expressions by wrapping them in curly braces within the 
# call to system.time().

system.time({ 
n <- 1000 
r <- numeric(n) 
for(i in 1:n) { 
  x <- rnorm(n) 
  r[i] <- mean(x) 
} 
}
)

# is approach assumes that you already know where the problem is and can call
# system.time() on it that piece of code. What if you dont know where to start? 



# R profiler --- Rprof()
# better summaryRprof() -- readable

# Rprof() keeps track of the function call stack at regularly sampled intervals
# and tabulates how much time is spent inside each function
#  By default, the profiler samples the function call stack every 0.02 seconds.

# The profiler is started by calling the Rprof() function.
Rprof() ## Turn on the profiler

# The profiler can be turned off by passing NULL to Rprof().
Rprof(NULL) ## Turn off the profiler

# The summaryRprof() function tabulates the Rprofiler output and calculates 
# how much time is spent in which function

# There are two methods for normalizing the data.

#  by.total divides the time spend in each function by the total run time 

# by.self does the same as by.total but first subtracts out time spent in
# functions above the current function in the call stack. Useful!

Rprof()
readLines("http://www.jhsph.edu") 
Rprof(NULL)

n <- 1000 
r <- numeric(n) 
Rprof()
for(i in 1:n) { 
  x <- rnorm(n) 
  r[i] <- mean(x) 
} 
Rprof(NULL)

summaryRprof()

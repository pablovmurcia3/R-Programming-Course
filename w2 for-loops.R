# FOOR LOOPS

# for loops take an interator variable and assign it
# successive values from a sequence or vector. For loops are
# most commonly used for iterating over the elements of an 
# object (list, vector, etc.)

for(i in 1:10) { 
  print(i) 
} #This loop takes the i variable and in each iteration of 
# the loop gives it values 1, 2, 3, …, 10, executes the code 
# within the curly braces, and then the loop exits. 

# flexibility in the assigment of the iterator varible

x <- c("a", "b", "c", "d") 

for(i in 1:4) { 
  ## Print out each element of 'x' 
  print(x[i]) 
} 

# For one line loops, the curly braces are not strictly 
# necessary.

for(i in 1:4) print(x[i]) 


## Generate a sequence based on length of 'x' 
for(i in seq_along(x)) {    # seq_along !!!
  print(x[i]) 
}

for(letter in x) {   # it is no necessary to have a integer
  print(letter) 
} 


# Nested for loop
# Nested loops are commonly needed for multidimensional or
# hierarchical data structures (e.g. matrices, lists). 

x <- matrix(1:6, 2, 3)
x
for(i in seq_len(nrow(x))) { #seq_len takes the number of rows in x and creates a sequence 
  for(j in seq_len(ncol(x))) { #seq_ len creates a 1:3 seq
    print(x[i, j]) }
}

# interesting functions
#seq_along
#seq_len


seq_len(3)

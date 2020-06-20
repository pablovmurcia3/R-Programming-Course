library(swirl)
swirl()

# The Split-Apply-Combine Strategy for Data Analysis'

flags

head(flags)

dim(flags)

class(flags)

lapply(flags, class)
# The lapply() function takes a list as input, applies a function to each 
# element of the list, then returns a list of the same length as the original
# one. Since a data frame is really just a list of vectors we can use it

cls_list <- lapply(flags, class)

cls_list

class(cls_list)

as.character(cls_list)
# sapply() allows you to automate this process by calling lapply() behind the
# scenes, but then attempting to simplify (hence the 's' in 'sapply') the result
# for you.

?sapply

cls_vect <- sapply(flags, class)

class(cls_vect)
# n general, if the result is a list where every element is of length one, then
# sapply() returns a vector. If the result is a list where every element is a
# vector of the same length (> 1), sapply() returns a matrix

sum(flags$orange)

flag_colors <- flags[, 11:17]

head(flag_colors)

lapply(flag_colors, sum)

sapply(flag_colors, sum)
#  arithmetic mean of each column will give us the proportion of 1s. (If it's not
# clear why, think of a simpler situation where you have three 1s and two 0s --
# (1 + 1 + 1 + 0 + 0)/5 = 3/5 = 0.6).

sapply(flag_colors, mean)

flag_shapes <- flags[, 19:23]

lapply(flag_shapes, range)

shape_mat<- sapply(flag_shapes, range)

shape_mat

class(shape_mat)

unique(c(3, 4, 5, 5, 5, 6, 6))

unique_vals <- lapply(flags, unique)

unique_vals

sapply(unique_vals, length)

sapply(flags, unique)

lapply(unique_vals, function(elem) elem[2]) # anonymous functions

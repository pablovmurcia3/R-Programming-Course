####################################################################################
                             #Dates and Times#
####################################################################################

# Dates are represented by the Date class 

x <- as.Date("1970-01-01") 
x 
unclass(x) 

x <- as.Date("2020-06-07") 
x 
unclass(x)  # days from 1970-01-01

# Times ar erepresented by the POSIXct orthe POSIXlt class. 

x <- Sys.time()
x 
class(x) 


# POSIXct isjust a very large integer under the hood.It use a useful class 
# when you want to store times in something like a dataframe

# POSIXlt is a list underneath and it stores a bunch of other useful information 

p <- as.POSIXlt(x)

names(unclass(p)) 

p$wday

x <- Sys.time() 
x ## Already in ‘POSIXct’ format
unclass(x) ## Internal representation 


# in case your dates are written in a different format. strptime() takes a
# character vector that has dates and times and converts them into to a POSIXlt
# object.

datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10") 
x <- strptime(datestring, "%B %d, %Y %H:%M") 
x #?????
class(x)

datestring <- c("01-10-2012")  # change format !!!
x <- strptime(datestring, "%B-%d-%Y") 
x

# Operations
x <- as.Date("2012-01-01") 
x
x <- as.POSIXlt(x) 
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S") 
y
x-y 


x <- as.Date("2012-03-01") 
y <- as.Date("2012-02-28") 
x-y 

# plot function will recognize the class

x <- as.POSIXct("2012-10-25 01:00:00") 
y <- as.POSIXct("2012-10-25 06:00:00", tz = "GMT") 
y-x   

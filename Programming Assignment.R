####################################################################################
                              # Programming Assignment 1
####################################################################################
f <- list.files("specdata", full.names = TRUE)
f
length(f)


# 1

pollutantmean <- function(directory, pollutant, id = 1:332) {
        
        listf <- list.files(directory, full.names = TRUE)
        
        df <- data.frame()
        
        for (i in id) {
              df <- rbind(df, read.csv(listf[i]))
        }
        
        if (pollutant == "sulfate") {
              mean(df$sulfate, na.rm = TRUE)
        } else if (pollutant =="nitrate") {
              mean(df$nitrate, na.rm = TRUE)
        } else {
              print("incorrect pollutant")
        }
        
}

pollutantmean("specdata", "sulfate", 1:10)

pollutantmean("specdata", "nitrate", 70:72)

pollutantmean("specdata", "nitrate", 23)

pollutantmean("specdata", "f", 23)


# 2

complete <- function(directory, id = 1:332)  {
        
        listf <- list.files(directory, full.names = TRUE)
        x <- numeric(length(id))
        k <- 1
        for (i in id) {
                filei <- read.csv(listf[i])
                completei <- sum(complete.cases(filei))
                x[k] <- completei
                k <- k +1
        }
        df <- data.frame(id, nobs = x)
        df
}

#  A common mistake is to use the indices of id
# to fill in the vector v.

complete("specdata", 1)

complete("specdata",  c(2, 4, 8, 10, 12))

complete("specdata", 30:25)

complete("specdata", 3)


# 3 


corr <- function(directory, threshold = 0){
        
        listf <- list.files(directory, full.names = TRUE)
        x <- numeric()
        k <- 1
        for (i in 1:length(listf)) {
          
                  filei <- read.csv(listf[i])
                  
                  if (sum(complete.cases(filei)) > threshold) {
                          
                         corre <- cor(filei[,2], filei[,3], use = "complete.obs")
                         x[k] <- corre
                         k <- k+1
                    
                  } 
                  
        }
        
        x  
}

cr <- corr("specdata", 150)
head(cr)
summary(cr)

cr <- corr("specdata", 400)
head(cr)
summary(cr)

cr <- corr("specdata", 5000)
summary(cr)
length(cr)

cr <- corr("specdata")
summary(cr)
length(cr)

########################################################################

pollutantmean("specdata", "sulfate", 1:10)

pollutantmean("specdata", "nitrate", 70:72)

pollutantmean("specdata", "sulfate", 34)

pollutantmean("specdata", "nitrate")

cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)

cc <- complete("specdata", 54)
print(cc$nobs)

RNGversion("3.5.1")  
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])

cr <- corr("specdata")                
cr <- sort(cr)   
RNGversion("3.5.1")
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)

cr <- corr("specdata", 129)                
cr <- sort(cr)                
n <- length(cr)    
RNGversion("3.5.1")
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)

cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))

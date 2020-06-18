####################################################################################
                              # Programming Assignment 1
####################################################################################
f <- list.files("specdata", full.names = TRUE)
f
length(f)

a1 <- read.csv(f[1])
a2 <- read.csv(f[2])
df <- data.frame()

for (i in 3:5) {
  df <- rbind(df, read.csv(f[i]))
}
df

a12 <- rbind(a1,a2)
a12$ID == 
subset(a12)
x <-1:2
sub <- a12[which(a12[,"ID"] == 2),]
s<-complete.cases(sub)

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


a <-matrix(1:12, nrow =6)
a[]
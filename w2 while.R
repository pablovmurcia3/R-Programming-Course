# While loops

# while is like a dinamic if (so.. a mix between if and for?)
# the condition is teste until is false

count <- 0 
while(count < 10) { 
  print(count) 
  count <- count + 1  # ! multiple actions in lines
} 

z <- 5

while(z >= 3 && z <= 10) {
  coin <- rbinom(1, 1, 0.5)
  
  if(coin == 1) { ## random walk 
    z <- z + 1 
      } else {
        z <- z - 1 
        } 
  } 
print(z)



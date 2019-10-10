help(runif)

runif(1) # 1 random value from 0 to 1
runif(3) # 3 random values from 0 to 1
runif(10, min=-3) # 10 random values from -3 to 0 (default)
runif(10, max=3)  # 10 random value from 0 (default) to 3
runif(10, min=-3, max=3) # 10 random values From -3 to 3
runif(10, min=3, max=-3)  # This will break

# A rather useless function
my_multiply <- function(x, y, say_hi=TRUE) {
  if(say_hi) {
    print("Howdy!")
  }
  return(x * y)
}

# Using our new function
my_multiply(3, 4)
my_multiply(-3, 4, say_hi = FALSE)




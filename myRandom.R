
myRandom <- function(num){
  
  # set the seed so the result is repeatable
  set.seed(1)
  
  # (vector of mean) mean is 0, sd (vector of sd) is 1
  x <- rnorm(num)
  
  # mean works for a matrix but not a dataframe
  y <- mean(x)
  
  # return the result
  y
}

#>source("myRandom.R")
#>myRandom(10)
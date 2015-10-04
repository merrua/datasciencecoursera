systemTimeEX <- system.time({
  n <- 1000
  r <- numeric(n)
  for (i in 1:n){
    x <- rnorm(n)
    r[i] <- mean(x)
  }
})
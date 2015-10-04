makeVector <- function(x = numeric()) {

  #when using this you need an variable
  # to return it too anExample <- makeVector(1:100)
    m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}
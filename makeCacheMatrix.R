makeCacheMatrix <- function(x = matrix()){
  #This function creates a special "matrix" object that can cache its inverse.
  
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- iinverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  
  # check if its already there
  if(!is.null(inv)){
    message("getting cached inverse of the matrix")
    return(inv)
  }
  
  # calc the inverse
  data <- x$get()
  inv <- solve(data)
  
  #maybe should have used a shorter name
  x$setinverse(inv)
  inv
}
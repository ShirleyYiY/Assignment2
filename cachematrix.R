## My functions create a matrix and then calculate and cache the inverse of the matrix
## 

## This function creates a list containing 4 functions, which serve to either set 
## or get the value of the matrix that you want to calculate the inverse/the inverse itself

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function()x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function calculates the inverse of the matrix you input in the function above
## and caches the results

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data,...)
  x$setsolve(i)
  i
}
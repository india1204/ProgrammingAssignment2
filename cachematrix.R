## caching the inverse of a matrix
## this function creates a special "matrix" object that can 

## cache its inverse

makeCacheMatrix <- function(x = matrix()) {
inv <-null
set <-function(y) {
  x <<- y
  inv <<-null
}
get <-function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set, get = get, 
     setInverse = setInverse, getInverse = getInverse)
}


## this function calculates the inverse of the matrix
## if the inverse of the matrix is already calculated than it can be retrieved from the above above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)){
        message("getting cached data")
        return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(Inv)
  inv
}

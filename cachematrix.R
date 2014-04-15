## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cachedInverseMatrix <<- NULL ## Clears the cached inverse matrix if there s one
  cachedMatrix <<- matrix(c(1,1,5,8,18,4,1,32,10), 3, 3) ## A matrix that is cached
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  if (is.null(cachedInverseMatrix)) { ## if cacheInverseMatrix is null
    message("New inverse and cached")  ## print message letting use know a new inverse is made
    inverseMatrix <- solve(cachedMatrix)  ## get inverse matrix from cached matrix from other function
    cachedInverseMatrix <<- inverseMatrix   ## save inverse matrix in cache
  } else {
    message("Getting cached data") ## let use know inverse matrix came from cache
  }
  return(cachedInverseMatrix)  ## return the inverse matrix
}

cacheSolve()
print(cacheSolve())
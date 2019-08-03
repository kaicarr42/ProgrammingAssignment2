## Computing the inverse of a matrix can be time consuming 
## Once computed, the inverse can be stored to be 
## accessed quickly for further coding

## To store the inverse, we must first create a matrix.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- funciton(y){
    x <<- y
    inv <<- NULL
  }
  get <- function(x)
  setInverse <- function(solveMatrix)
    inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## This function takes the inverse of the matrix created above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if(!is.null(inv)){
  message("retrieving cached data")
  return(inv)
}
data <- x$get()
inv <- solve(data)
x$setInverse(inv)
inv
  }

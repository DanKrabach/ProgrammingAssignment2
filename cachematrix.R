## This contains two functions, one that save as computation of a matrix inverse
## in a special list, and a function that computes the mean and saves the result
## inside the list,

## This is the constructor function that creates and manages a saved matrix to
## avoid represted computation.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- x
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Solve (invert) the supplied matrix and place back into the 

cacheSolve <- function(x, ...) {
    m <- x$getsolve()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
  }





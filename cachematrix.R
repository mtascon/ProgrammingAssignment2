## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Comment to test commit in GitHub
## This makeCacheMatrix is based on makeVector 

makeCacheMatrix <- function(x = matrix()) {
  
    m <- NULL
    set <- function(y) {
      x  <<- y
      m <<- NULL
    }
    get <- function() {
      x
    }
    setinverse <- function(solve)
    {
      m <<- solve(c)
    }  
    getinverse <- function()
    {
      m
    }  
    list(set = set, get = get,
         getinverse = setinverse,
         getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

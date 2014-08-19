## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Comment to test commit in GitHub
## This makeCacheMatrix is based on makeVector 

makeCacheMatrix <- function(x = matrix()) {
  
	## Init to NULL
    m <- NULL
	
	## Set Function
    set <- function(y) {
      x  <<- y
      m <<- NULL
    }
    get <- function() {
      x
    }
    ## solve(x) returns the inverse matrix of invertible matrix x
    setsolve <- function(solve)
    {
      m <<- solve
    }  
    getsolve <- function()
    {
      m
    }  
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inv <- x$getsolve()
		
		# Get cached Matrix and return
		if(!is.null(inv))
		{
      message("Getting cached matrix")
			return(inv) # return stops cacheSolve execution and returns m inv as the result
		}
		# If it is null we need to calculate the inverse of the matrix
    message("Is null")
		myMatrix <- x$get()
		inverseMatrix <- solve(myMatrix)
		# Store the inverse of the matrix
		x$setsolve(inverseMatrix)
		inverseMatrix
		
}

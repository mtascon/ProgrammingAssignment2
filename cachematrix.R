## Put comments here that give an overall description of what your
## functions do

## Comment to test commit in GitHub

## This makeCacheMatrix is based on makeVector 
## cachematrix.R defines two functions:
## 1. makeCacheMatrix fuction defines  matrix object and defines methods to set and get 
##    this matrix object and its inverse

makeCacheMatrix <- function(x = matrix()) {
  
	  ## Init i, inverse of the matrix, to NULL
    i <- NULL
	
	  ## Set Function
    set <- function(y) {
      x  <<- y
      i <<- NULL
    }
    
    ## Get Function
    get <- function() {
      x
    }
    ## Set Function for the inverse of the matrix 
    setinverse <- function(solve)
    {
      i <<- solve
    }  
    ## Get Function for the inverse of the matrix
    getinverse <- function()
    {
      i
    }  
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  
}


## Write a short comment describing this function
## Function to calculate the inverse of a matrix
## If the inverse has already been calculated and the 
## input matrix has not changes this function retrieves
## the inverse from the cache

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
		inv <- x$getinverse()
		
		## Get cached Matrix and return
		if(!is.null(inv))
		{
      message("Getting cached matrix")
			return(inv) # return stops cacheSolve execution and returns cached inv as the result
		}
		## If it is null we need to calculate the inverse of the matrix
    message("Inverse is null. Calculating new inverse of the matrix")
    ## Get the new Matrix
		myMatrix <- x$get()
    
    ## Solve function to calculrate inverse
		inverseMatrix <- solve(myMatrix)
		## Store the inverse of the matrix
		x$setinverse(inverseMatrix)
    ## Return the inverse of the matrix 
		inverseMatrix
    return(inverseMatrix)
}

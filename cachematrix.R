## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.


makeCacheMatrix <- function(x = matrix()) {
  ##The final object to be set null first 
   RESULT <- NULL
    
    setmatrix <- function(y) {
      ## Storing y object into a separate environment
      x<<-y
      RESULT<<-NULL
      
    }
    getmatrix <- function () x
    getinverse <- function() RESULT
    setinverse <- function (inverse) RESULT <<-inverse
    list(set=setmatrix,get=getmatrix, setinverse=setinverse,getinverse=getinverse)
    }


## Write a short comment describing this function

####cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
  RESULT <- x$getinverse()
    if(!is.null(RESULT)){
      message("getting cached data")
      return(RESULT)
    }
  ##if data is null
    data <- x$get()
    RESULT <-solve(data)
    x$setinverse(RESULT)
    RESULT
  
  
        ## Return a matrix that is the inverse of 'x'
}

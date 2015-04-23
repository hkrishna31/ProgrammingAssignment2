## 2 functions to set & get a matrix and its inverse and to calculate its inverse
## functions do

## this function sets a matrix and caches its inverse.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {  #It sets the matrix to the passed parameter and its inverse to NULL
                x <<- y
                m <<- NULL
        }
        get <- function() x #This gets/prints the matrix
        setinverse <- function(mean = matrix()) m <<- mean # This sets the cache of the inverse to provided matrix parameter.
        getinverse <- function() m #This gets/prints the inverse of matrix
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## This calculates inverse of the matrix it is not cached else gets it from cache.

cacheSolve <- function(x, ...) {
        ## Retursn a matrix that is the inverse of 'x'
}

cacheSolve <- function(x, ...) {
        m <- x$getinverse() # Trys to get inverse from the Cache
        if(!is.null(m)) { 
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...) # If cache is NULL, then calculates inverse.
        x$setinverse(m) # Sets the Cache.
        m
}
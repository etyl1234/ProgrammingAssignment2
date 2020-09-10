## Put comments here that give an overall description of what your
## functions do
## A pair of functions that cache the inverse of a matrix.

## Write a short comment describing this function
## This function creates a special matrix that can cache its inverse.
## makeCacheMatrix creates a special matrix, which is a list containing the function to:

        ## (1) set the value of the matrix
        ## (2) get the value of the matrix
        ## (3) set the value of the inverse
        ## (4) get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
}
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
 }

## Write a short comment describing this function
## This function computes the inverse of the matric returned by the makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
 }
        data ,- x$get()
        m <- solve(data,...)
        x$setinverse(m)
        m
        ## Return a matrix that is the inverse of 'x'
}

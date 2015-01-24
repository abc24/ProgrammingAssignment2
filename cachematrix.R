# README.md is for instructions on running the code and output from it
# Here, makeCacheMatrix is a function that returns a list of functions 
# What it does is it stores a martix and a cached value of the inverse of the 
# matrix. 
#has the following functions:
# setMatrix      set the value of a matrix
# getMatrix      get the value of a matrix
# cacheInverse   get the cached value (inverse of the matrix)
# getInverse     get the cached value (inverse of the matrix)
#

makeCacheMatrix <- function(x = numeric()) {
        
        # It holds the cached value
        # initially, it is set to NULL because nothing
        #is cached
        cache <- NULL
        
        # Following is for storing a matrix
        set<- function(value) {
                x <<- value
                # since the matrix is assigned a new value, flush the cache
                cache <<- NULL
        }

        # it returns the stored matrix
        get<- function() {
                x
        }

        # caching the given argument 
        cacheInverse <- function(solve) {
                cache <<- solve
        }

        # Following is to get the cached value
        getInverse <- function() {
                cache
        }
        
        # returning a list.
        # Each element in the list is a function.
        list(set= set, get= get, cacheInverse = cacheInverse, getInverse = getInverse)
}


#Calculating inverse of the matrix as stated in the assignment. Matrix is 
# created  with makeCacheMatrix

cacheSolve <- function(y, ...) {
        # get the cached value
        inverse <- y$getInverse()
        # if there is a cached value 
        # return the value
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        # if there is not a cached value then 
        # get the matrix and calculate the inverse
        # further, store it in the cache
        
        data <- y$get()
        inverse <- solve(data)
        y$cacheInverse(inverse)
        
        # returning the inverse
        inverse
}

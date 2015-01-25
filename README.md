#Showing how code works
#one can create the matrix by calling makeCacheMatrix
        xyz <- makeCacheMatrix( matrix(c(77,88,23,16), nrow = 2, ncol = 2) );
#our matrix is created and by running the following code we will get 
#its inverse
cacheSolve(xyz)
#output we get is
           [,1]        [,2]
    [1,] -0.02020202  0.02904040
    [2,]  0.11111111 -0.09722222
#now if we run again
          cacheSolve(xyz)
#we will get the cached value now
getting cached data
                 [,1]        [,2]
            [1,] -0.02020202  0.02904040
            [2,]  0.11111111 -0.09722222


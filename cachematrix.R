## Put comments here that give an overall description of what your
## functions do

## This function creates a list of functions:
##      set the the matrix by their elements 
##      get the elements of the matrix
##      set the the inverse of matrix 
##      get the the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function(){
                x
        } 
        setinverse <- function(inversa){
                i <<- inversa      
        }
        getinverse <- function() {
                i
        }
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}



## This function receives the list of functions created by makeCacheMatrix, firstly, it retrives
## the inverse (x$getinverse), if the value is not NULL, the fucntion takes the matrix stored 
## in the cache memory (the inverse of 'x'), if not, it gets the matrix stored 'x', calculate the inverse of the matrix and store using
## the subfunction setinverse
## Finally the return is a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data)
        x$setinverse(i)
        i
        ## Return a matrix that is the inverse of 'x'
}

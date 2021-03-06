## The following function will cache and aompute the inverse
## of a matrix

##This function creates a special "matrix" 
## that can cache its inverse

makeCacheMatrix <- function(mtx = matrix())  {
    inverse <- NULL
    set <- function(x) {
        mtx <<- x;
        inverse <<- NULL;
    }
    get <- function() return(x);
    setinv <- function(inv) inverse <<- inv;
    getinv <- function() return(inverse);
    return(list(set = set, get = get, setinv = setinv, getinv = getinv))

}


## This function computes the inverse of the 
## "matrix" returned by `makeCacheMatrix` 

cacheSolve <- function(x, ...) {
        {
    inverse <- x$getinv()
    if(!is.null(inverse)) {
        message("Getting cached data...")
        return(inverse)
    }
    data <- x$get()
    invserse <- solve(data, ...)
     x$setinv(inverse)
    return(inverse)
}

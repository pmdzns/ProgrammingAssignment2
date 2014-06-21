## Compute the inverse of a square matrix and cach the result
## makeCacheMatrix creates the cacheable matrix

## makeCacheMatrix creates the cacheable matrix

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL # set cache flag
 
        set <- function(y) {
                x <<- y    # assign to gobal env
                m <<- NULL # assign to gobal env or cache
        }
        get <- function() x # function to retrieve gobal 

        setsolve <- function(solve) m <<- solve # function to place value in global env

        getsolve <- function() m # get inverse matrix from gobal env

        list (set=set,get=get,setsolve=setsolve,getsolve=getsolve)
}


## cacheSolve returns the inverse matrix. If not already in cache it solves for 'x' and caches the result

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 m <- x$getsolve() #get the inverse matrix from the gobal env
        if (!is.null(m)) { # if it (does not) = Null, grab the inverse matrix from cache
                 message("getting cached data")
                 return(m)
        }
        mdata <- x$get() # if not solved then solve and put the inverse matrix into cache
        m <- solve(mdata)
        x$setsolve(m)
        m

}

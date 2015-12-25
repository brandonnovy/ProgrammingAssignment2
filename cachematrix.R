## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	# set the value of the matrix
	# get the value of the matrix
	# set the value of the inverse
	# get the value of the inverse

	i <- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
	}
	get <- function () x
	setinverse <- function(inverse) i <<- inverse
	getinverse <- function() i
	matrix(set=set, get=get, setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	i <- x$getinverse()
	# if the inverse is not blank then get it from the cache
 	if(!is.null(i)) {
      	message("Getting cached data...")
            return(i)
        }

	# if inverse is blank, then calculate the inverse
        data <- x$get()
        i <- solve(data, ...)

	  # set the value of the inverse in the cache
        x$setinv(i)
        i
}

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	# set the value of the matrix
	set <- function(y) {
		x <<- y
		i <<- NULL
	}
	# get the value of the matrix
	get <- function () x
	# set the value of the matrix's inverse
	setinverse <- function(inverse) i <<- inverse
	# get the value of the matrix's inverse
	getinverse <- function() i
	# create list to be used with cachSolve function
	list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)
}


cacheSolve <- function(x, ...) {
        # Return a matrix that is the inverse of 'x'
	i <- x$getinverse()
	# if the inverse is not blank then get it from the cache
 	if(!is.null(i)) {
      	message("Getting cached data...")
      	# exit function with cached data
            return(i)
        }
	# matrix is blank, so calculate the inverse and load it into the matrix
        data <- x$get()
        i <- solve(data, ...)

	# set the value of the inverse in the cache
        x$setinv(i)
        i
}

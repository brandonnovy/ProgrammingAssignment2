# This code is based on the original makeVector and cacheMean functions by Dr. Roger D. Peng.
# I reused the code to create a matrix and solve the inverse of said matrix.
# https://github.com/rdpeng/ProgrammingAssignment2
# Brandon Novy - 12/27/2015

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	# set the value of the matrix
	set <- function(y) {
		# assign value to x outside of current environment
		x <<- y
		# assign value to i outside of current environment
		i <<- NULL
	}
	# get the value of the matrix
	get <- function () x
	# set the value of the inverse
	setinverse <- function(inverse) i <<- inverse
	# get the value of the inverse
	getinverse <- function() i
	# create list to be used with cacheSolve function
	list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)
}


cacheSolve <- function(x, ...) {
        # get the inverse and assign it to i
	i <- x$getinverse()
	# if i is not blank then get the inverse from the cache
 	if(!is.null(i)) {
      		message("Getting cached data...")
      		# exit function with cached data
        	return(i)
        }
	# since i is blank, calculate the inverse and load it into the matrix
        data <- x$get()
        i <- solve(data, ...)
	# set values to the cache for next time
        x$setinv(i)
        i
}

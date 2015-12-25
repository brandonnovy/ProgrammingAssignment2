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
}

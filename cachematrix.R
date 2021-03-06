## These two function show that set a matrix and find the inverse of that matrix

## This funch is to set a matrix, and also cache its inverse

makeCacheMatrix <- function(x = matrix()) {

	m<-NULL
	set<-function(y){  ## set a matrix
		x<<-y
		m<<-NULL
	}
	get<-function()x  ## get the matrix that setted before
	setmatrix <- function(solve) m <<- solve  ## cache the inverse found by cacheSolve function
	getmatrix <- function()m
	list(set=set,get=get,
		setmatrix=setmatrix,
		getmatrix=getmatrix)
}


## This function is to compute the inverse of matrix,if the inverse is the same as before than return cached inverse.

cacheSolve <- function(x, ...) {
       
         ## Return a matrix that is the inverse of 'x'
	m<-x$getmatrix()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}
	data<-x$get() ## get the setted matrix
	m<-solve(data,...) ## find its inverse
	x$setmatrix(m)
	m
}

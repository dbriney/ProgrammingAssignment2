## Put comments here that give an overall description of what your
## functions do

##dbriney 8.20.16
##makeCacheMatrix function takes an invertible matrix and returns a list of
##getters and setters. I wish I understood what makes a matrix invertible, but I don't. 
##I also wish I fully understood the concept of getters and setters; sometimes
##I think I do, other times not so much.
##I also would have to admit I don't have my mind all the way around the
##concept of lexical scoping, but hey, maybe with time !!??

##cacheSolve is a function that for an input makeCacheMatrix object 
##first checks to see if its inverse has been cached in the function's
##environment and returns it if so. Otherwise, the function calculates
##the input object's inverse. 

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setinv <- function(solve) inv <<- solve
	getinv <- function() inv
	list(set = set,
	     get = get,
	     setinv = setinv,
	     getinv = getinv)

}

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)){
        	message("Sticking with the cached inverse - much faster, I am told")
        	return(inv)
        }
        message("Oh well, nothing cached")
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
}

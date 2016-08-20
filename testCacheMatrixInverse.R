testCacheMatrixInverse <- function(matrix_in){
	temp <- makeCacheMatrix(matrix_in)
	
	start.time <- Sys.time()
	cacheSolve(temp)
	duration <- Sys.time() - start.time
	print(duration)
	
    start.time <- Sys.time()
	cacheSolve(temp)
	duration <- Sys.time() - start.time
	print(duration)

}
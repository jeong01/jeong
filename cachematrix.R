## Put comments here that give an overall description of what your
## functions do

#Not sure how the "x=numeric()" part works in the argument list of the function, 
#but it seems to be creating a variable x that is now reachable from the gloval environment, 
#but is avaliable in the environment of the makeCacheMatrix function

makeCacheMatrix <- function(x = matrix()) {

# Holds the cached value or null value
# Nothing is cached initially to set it to null value

cache <- Null

#Store a matrix
	setMatrix <- function(newValue){
	x<- newValue

#Since the matrix is assigned a new value, flush the cache
	cache <- Null
}

#Return the stored matrix
	getMatrix <- function(){
		x
}

#Get the cached value
	getInverse <- function(){
	cache
}

#Return a list. Each named element of the list is a function
	List(setMatrix = setMatrix, getMatrix = getMartix, cacheInverse = cacheInverse, getInverse = getInverse)
}


#The following function calculate the inverse of a "special" matrix created with makeCacheMatrix
	cacheSolve <- function(x, ...) {
      
	#Get the cached value
		Inverse <- x$getInverse()
	
	#Return it if a cached value exists
	if(!is.null(inverse)){
		message("Getting cached data")
		return(inverse)
}

#Otherwise get the matrix, calculate the inverse and store it in the cache
	data <- x$getMatrix()
	inverse <- solve(data)
	x$cacheInverse(inverse)

#Return the inverse
	inverse
}

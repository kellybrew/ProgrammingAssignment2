## The function written below, makeCacheMatrix
## creates a special matrix object that can cache its inverse
## The purpose of writing this fucntion is to cache potentially
## time-consuming computations
## The function makeCacheMatrix contains the following functions:
## * setMat      set the value of the matrix
## * getMat      get the value of the matrix
## * getCache    get the cached value
## * getInverse  get the cached value (inverse of the matrix)
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  # holds the cached value or NULL if nothing is cached
  # initially nothing is cached so set it to NULL
  cache <- NULL

  # store a matrix
  setMat <- function(newValue) {
    x <<- newValue
    # since the matrix is assigned a new value, flush the cache
    cache <<- NULL
  }

  # returns the stored matrix
  getMat <- function() {
    x
  }

  # cache the given argument
  getCache <- function(solve) {
    cache <<- solve
  }

  # get the cached value
  getInverse <- function() {
    cache
  }

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  inverse <- y$getInverse()
  # if a cached value exists return it
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  # otherwise get the matrix, caclulate the inverse and store it in
  # the cache
  data <- y$getMat()
  inverse <- solve(data)
  y$getCache(inverse)

  # return the inverse
  inverse
}


}

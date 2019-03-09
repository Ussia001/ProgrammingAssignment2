## Put comments here that give an overall description of what your
## functions do

## The code is able to create an matrix, and cache its inverse until it can be called upon later

makeCacheMatrix <- function(x = matrix()) {
  
  ## The first part of the code will set the inverse
  i <- NULL
  
  ## Subsection to initiate the matrix
    set <- function( matrix ) {
      m <<- matrix
      i <<- NULL
  }
  
  ## Here the matrix will be called upon from the cache memory
  get <- function() {
    
    ## The matrix will be displayed 
    m
  }
  
  ## The inverse of the matrix will be set here
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ##The inverse of the matrix will be retrieved from cache memory
  getInverse <- function() {
    
    ## The Inverse of the matrix will be displayed here
    i
  }
  ## The functions/ methods used will be displayed here
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)

## The inverse of the special matrix is created from the "makeCacheMatrix" section above

cacheSolve <- function(x, ...) {
  
        ## The inverse of 'x' is displayed as a Matrix
  m <- x$getInverse()
  
  ## The inverse will be shown/diplayedif its already set
  if( !is.null(m) ) {
    
           message("getting cached data")
            return(m)
  }
  
  ## Matrix is retrieved
  data <- x$get()
  
  ## matrix multiplication used to compute matrix
  m <- solve(data) %*% data
  
  ## The inverse is set to the object m
  x$setInverse(m)
  
  ## The matrix is displayed by calling on the object
  m
}

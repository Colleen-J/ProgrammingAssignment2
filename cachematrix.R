## These two functions use cacheing to save the value of matrix inversions to avoid unnecessary re-computation

##makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    y<<-solve(x)

    y
}


## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then this function retrieves
## the inverse from the cache.

cacheSolve <- function(x, ...) {
  z<-y

  if (!is.null(z)) {
    m<-solve(x)
    if (identical(m,z)) return(z)
  }

  z<-solve(x)
  z
}
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##makeCacheMatrix function creates a matrix for four functions
makeCacheMatrix <- function(x = matrix()) {
        inverse<-NULL
##Set function stores the matrix
        set<-function(y){
                x<<-y
                inverse<<-NULL
        }
##Get function recalls the matrix
        get <- function() x
##setInverse function stores the inverse of the matrix
        setInverse<-function(solve)inverse<<-solve
##getInverse function recalls the inverse of the matrix
        getInverse<-function()inverse
        list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function

## This function performs and displays the inverse of the matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse<-x$getInverse()
##If the calculation of the inverse of the matrix is done before then it recalled using the previous function and displayed along with a message
        if(!is.null(inverse)){
                message("Fetching cached data")
                return(inverse)
        }
##If the calculation of the inverse of the matix is not done before then it is computed using the following code
        data<-x$get()
        inverse<-solve(data,...)
        x$setInverse(inverse)
        inverse
}
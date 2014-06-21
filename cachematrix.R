## These fuctions cache the inverse of a matrix

## This fuction creates a special "matrix" that is a list

makeMatrix <- function(x = matrix()){
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get<-function() x
        setmatrix<-function(solve) m<<- solve
        getmatrix<-function() m
        list(set=set, get=get,
             setmatrix=setmatrix,
             getmatrix=getmatrix)
}


##computes the inverse of the spcial matrix
cacheSolve <- function(x=matrix(), ...) {
        m<-x$getmatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        ## Return a matrix that is the inverse of 'x'
        matrix<-x$get()
        m<-solve(matrix, ...)
        x$setmatrix(m)
        m
}


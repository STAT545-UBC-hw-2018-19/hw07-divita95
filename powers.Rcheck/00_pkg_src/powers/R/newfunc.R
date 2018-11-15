#' Apply Box-Cox Power Transformations
#'
#'Compute the Box-Cox power transformation of a variable.
#'
#' @param x numeric vector to transform, p power (0 = log); if p is a vector then a matrix of transformed values with columns labelled by powers will be returned.
#' @return a vector or matrix of transformed values.
#' @export




boxcox <- function(x, p) {
    if(p==0) {
        return(log(x))
    }  else {
        return(((x^p)-1)/p)
    }
}


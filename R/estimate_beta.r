#' Estimate beta function
#'
#' @param x A nxk matrix with k variables.
#' @param y A vector of n observations.
#'
#' @return A matrix of (x'x)^-1 x'y
#' @export
#'
#' @examples
#' y <- iris[, "Sepal.Length"] |> as.matrix()
#' x <- iris[, c("Sepal.Width", "Petal.Length", "Petal.Width")] |> as.matrix()
#' estimate_beta(x,y)

estimate_beta <- function(x,y) {
  result <- solve(t(x) %*% x) %*% (t(x) %*% y)
  return(result)
}

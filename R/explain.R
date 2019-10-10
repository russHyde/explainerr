explain <- function(x) {
  stopifnot(missing(x) || is.character(x))
  stopifnot(length(x) == 1L)
  NULL
}

wtf <- function(x) explain(x)

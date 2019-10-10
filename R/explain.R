#' `explain` the reason for an error message
#'
#' @param        x             An error message, for example
#'   \code{x = "Error in c[1] : object of type 'builtin' is not subsettable"}
#'
#' @examples
#' explain("Some random error message")
#' explain("Error in c[1] : object of type 'builtin' is not subsettable")
#' @export

explain <- function(x) {
  stopifnot(missing(x) || is.character(x))
  stopifnot(length(x) == 1L)

  # TODO: implement a function `suggest` to choose which error description
  # should be printed out based on the contents of `x`; eg, if it contains
  # "... is not subsettable" then return the function `not_subsettable`
  error_describing_fn <- if (grepl("is not subsettable", x)) {
    not_subsettable
  } else {
    apology
  }

  # A separate `display` function is used so that we can defer choice
  # re how the error descriptions are presented to the user: they could be
  # printed to the console, they could be opened in the `help` box etc.,
  # they could both print a description and open up a website containing
  # further information etc.
  display(error_describing_fn)

  invisible(NULL)
}

#' "WTF" does this error message mean?
#'
#' @inheritParams   explain
#'
#' @export

wtf <- function(x) explain(x)

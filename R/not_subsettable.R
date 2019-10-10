#' Error: "object of type <XXX> is not subsettable"
#'
not_subsettable <- function() {
  "An example where this error comes up is when you've used [square brackets]
  instead of (parentheses) to surround the arguments to a function.

  If you wanted the `mean` of the numbers 1, 2 and 3, you should call
  `mean(c(1, 2, 3))`, but it's easy to call `mean[c(1, 2, 3)]` by mistake. In R,
  the square brackets are used for subsetting - `v[2]` pulls out the
  second entry of `v` (where `v` may be a list or a vector or something).

  So the syntax `mean[c(1, 2, 3)]` is attempting to get R to pull out the first
  three entries of some vector called mean; but `mean` is a function and so
  can't be subset in this way.

  Examples of non-subsettable things:

  mean[1:2]        # mean is a function (a `closure`), did you expect `mean(1:2)`?
  c[1]             # c is a function (a `builtin`), did you mean `c(1)`?
  `[`[1]           # `[` is a function (a `special`)
  globalenv()[1]   # globalenv() returns an `environment`
  "
}

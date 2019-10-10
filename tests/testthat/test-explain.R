context("Test that explain() and wtf() can be called")

test_that("explain() is a synonym for wtf()", {
  my_mock <- mock()
  stub(wtf, "explain", my_mock)
  expect_null(wtf("some-error"))
  expect_called(my_mock, 1)
  expect_args(my_mock, 1, "some-error")
})

test_that("input to explain() is either a string or no-args", {
  invalid_input <- list(
    zero_entries = character(0),
    multiple_entries = c("abc", "def"),
    non_string_vector = 1L,
    function_as_input = base::mean
  )

  for (x in invalid_input) {
    expect_error(
      explain(x),
      info = "explain(x) - x should be a length-1 character vector"
    )
  }
})

test_that("explain(x) calls suggest(x)", {
  # suggest(x) should identify the relevant document to show to the user
  # display(x) should show the relevant document to the user
  # - first implementation of `display` should call `help`
})

test_that("explain('something') calls help(x) where x is a local function", {
  my_help <- mock()
  stub(explain, "help", my_help)
  expect_null(
    explain("object of type 'closure' is not subsettable")
  )
  expect_called(my_help, 1)
  expect_args(my_help, 1, not_subsettable)
})

#test_that("explain() checks the most recent error message", {
#  tryCatch(
#    mean[1],
#    error = function(e) {
#      expect_equal(e[["message"]], "Error in mean[1] : object of type 'closure' is not subsettable\n")
#    }
#  )
#  # `e` is of class: "simpleError" "error"       "condition"
#})

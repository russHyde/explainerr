# helpers for tests

mock <- mockery::mock
stub <- mockery::stub
expect_called <- mockery::expect_called
expect_args <- mockery::expect_args

expect_display <- function(msg, explanation_fn) {
  # When the error message `msg` is passed to `display` the explanation defined
  # in `explanation_fn` should be displayed
  my_display <- mock()
  stub(explain, "display", my_display)

  expect_null(explain(msg))
  expect_called(my_display, 1)
  expect_args(my_display, 1, explanation_fn)
}

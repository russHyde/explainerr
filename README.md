
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bugger

<!-- badges: start -->

<!-- badges: end -->

The goal of bugger is to help explain some of the more frequent, and
frequently miunderstood, error messages in R.

If you googled for “Error in {`some_function`}: object of type ‘closure’
is not subsettable” in your first week learning *R*, hopefully you’ll
understand that *R*’s error messages are somewhat opaque.

## Installation

You can install the released version of bugger from
[github](https://github.com/russHyde/bugger.git) with:

``` r
# library(devtools)
devtools::install_github("russHyde/bugger")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(bugger)
## basic example code
```

    # not ran
    bugger("Error in mean[1]: object of type 'closure' is not subsettable")

This should open up a man page that explains the error in a bit more
detail.


<!-- README.md is generated from README.Rmd. Please edit that file -->

# explainerr

<!-- badges: start -->

<!-- badges: end -->

The goal of `explainerr` is to help explain some of the more frequent,
and frequently miunderstood, error messages in R.

If you googled for “Error in {`some_function`}: object of type ‘closure’
is not subsettable” in your first week learning *R*, hopefully you’ll
understand that *R*’s error messages are somewhat opaque.

## Installation

You can install the released version of explainerr from
[github](https://github.com/russHyde/explainerr.git) with:

``` r
# library(devtools)
if (! "explainerr" %in% installed.packages()){
  devtools::install_github("russHyde/explainerr")
}
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(explainerr)
## basic example code
```

    # not ran
    explain("Error in mean[1]: object of type 'closure' is not subsettable")

This should open up a man page that explains the error in a bit more
detail.

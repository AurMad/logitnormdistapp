Shiny app for plotting distributions of proportions defined by normal
distributions on the logit scale
================

## Package installation and update

The easiest way to install the `logitnormdistapp` package is from
Github. This requires installing the `devtool` package first.

``` r
install.packages("devtools")
```

Then load the `devtool` package:

``` r
library(devtools)
```

In order to install (or update) the `logitnormdistapp` package, run the
following line:

``` r
install_github("AurMad/logitnormdistapp")
```

## The `shiny_logitnorm()` function

The package contains a single function called `shiny_logitnorm()`. This
function launches a shiny app. The user can specify either the mean and
standard deviations of a normal distributions on the logit scale using
sliding bars. The corresponding distribution of proportions will be
plotted and the corresponding mean and sigma parameters will be
displayed. The user can also enter the mean and sigma parameters which
will lead to the corresponding distribution being displayed.

``` r
library(logitnormdistapp)

shiny_logitnorm()
```

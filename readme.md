
# OECD

### Introduction

The `OECD` package allows the user to download data from the OECD’s API
in a dynamic and reproducible way. This is a fork from
<https://github.com/expersso/OECD> that incorporates the solutions in
the comments to keep the package compatible with the current version of
the api.

The package can be installed from Github (development version) only:

``` r
# from Github
library(devtools)
install_github("VIG-RM/OECD")

library(OECD)
```

### How to use the package

Unless you know the exact code of the series you’re looking for, the
best way to start is by downloading a dataframe with all the available
datasets and their descriptions, and then run searches on it. The search
string can be a regular expression and is case-insensitive by default.

``` r
dataset_list <- get_datasets()
search_dataset("unemployment", data = dataset_list)
```

Detailed information in the vignette.

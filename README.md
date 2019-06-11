# testassign

## How to work with testassign:
1. Make sure you have all relevant packages installed: 
```r 
install.packages("tidyverse")
install.packages("nycflights13")
```

1. If not installed, install **git** (\url{https://git-scm.com/downloads}). Afterwards restart RStudio.

1. Download the Assignment Repository:
  `RStudio -> File -> New Project ->  Version Control -> git`
  Copy the URL for your assignment into the field **Repository URL**
 
1. If you are using RStudio open R-Project file: `testAssignment.Rproj` in the folder

1. Solve the different exercises in the respective files!

1. When you are done with an exercise, go to R/testAssign.R and enable the 

1. Use the RStudio GitHub functionality to add the files, commit them and when you are ready push them to GitHub

1. After a few minutes, travis checks should run!



## Build and check locally:

If you do not want to wait for Travis checks, build the package locally:

1. Install a few more packages:
```r 
install.packages("devtools")
install.packages("checkmate")
install.packages("testthat")
install.packages("forcats")
```
1. If you are using RStudio open R-Project file: `testAssignment.Rproj` in the folder.

1. Use `devtools::test()` and `devtools::check()`!


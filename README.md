## Loading required packages

This repository contains the R code (1) and associated data for the
Bayesian statistical model described in Díaz et al. 2022 (2) to estimate
prevalence from apparent prevalence measured by two independent
diagnostics (Kato Katz, KK and Miracidial Hatching Test, MHT). The model
requires installation of the rjags (3) and coda (4) packages.

    library(rjags)
    library(coda)

## Loading the data, defining & running the model

JAGS requires the raw data to be formatted in a list which can be loaded
as follows:

    datls <- readRDS("jagsdat.rds")

The statistical model is specified in an R script which writes a
suitable .txt file to the directory:

    source("jagsmod.R")

The model is then run within the R environment using:

    source("runmod.R")

# Summary data

The summary statistics of the estimated posterior distributions are
loaded as follows:

    sumdat <- readRDS("prev.rds")

# References

<span class="csl-left-margin">1. </span><span class="csl-right-inline">R
Core Team. *R: A language and environment for statistical computing*.
Vienna, Austria: R Foundation for Statistical Computing (2019).
<https://www.R-project.org></span>

<span class="csl-left-margin">2. </span><span
class="csl-right-inline">Díaz AV, Lambert S, Neves MI, Borlase A, Léger
E, Diouf ND, Sène M, Webster JP, Walker M. Modelling livestock
test-and-treat: A novel one health strategy to control schistosomiasis
and mitigate against drug resistance. *Front Trop Dis* (2022) XX:XX.
doi: [XX](https://doi.org/XX)</span>

<span class="csl-left-margin">3. </span><span
class="csl-right-inline">Plummer M. *Rjags: Bayesian graphical models
using MCMC*. (2021). <https://CRAN.R-project.org/package=rjags></span>

<span class="csl-left-margin">4. </span><span
class="csl-right-inline">Plummer M, Best N, Cowles K, Vines K. CODA:
Convergence diagnosis and output analysis for MCMC. *R News* (2006)
6:7–11. <https://journal.r-project.org/archive/></span>

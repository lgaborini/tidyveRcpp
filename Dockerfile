FROM rocker/tidyverse:latest
LABEL maintainer="lorenzo.gaborini@gmail.com"

## tidyvercpp
#
# From rocker/tidyverse:
# latest with rstudio, devtools, tidyverse, Rcpp, RcppArmadillo and dependencies
#
# Base Dockerfile from rocker/tidyverse
#

# RUN apt-get update -qq && apt-get -y --no-install-recommends install \
#   libxml2-dev \
#   libcairo2-dev \
#   libsqlite-dev \
#   libmariadbd-dev \
#   libmariadb-client-lgpl-dev \
#   libpq-dev \
#   libssh2-1-dev \
#   libcurl4-openssl-dev \
#   libglib2.0-dev \
#   libssl-dev \
#   && R -e "source('https://bioconductor.org/biocLite.R')" \
#   && install2.r --error \
#     --deps TRUE \
#     tidyverse \
#     dplyr \
#     ggplot2 \
#     devtools \

RUN apt install -y libgsl-dev \
    && install2.r --error \
    remotes \
    Rcpp \
    RcppArmadillo


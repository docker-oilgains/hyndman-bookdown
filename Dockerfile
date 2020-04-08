FROM rocker/rstudio:3.6.2


RUN apt-get -y update \
 && apt-get -y install  \
    libxml2-dev \
    libz-dev

RUN install2.r --error \
    haven \
    xml2 

# Install R packages
RUN install2.r --error \
    bookdown \
    fpp2 \
    seasonal \
    hts \
    sandwich \
    strucchange \
    vars \
    Mcomp \
    purrr \
    scales \
    rprojroot \
    xfun \
    testit \
    tinytex \
    mime \
    Rcpp \
    inline \
    microbenchmark \
    knitr \
    jsonlite \
    ggplot2 \
    vctrs \
    zeallot \
    magrittr \
    lazyeval \
    withr \
    curl \
    colorspace \
    tibble \
    testthat \
    highr \
    glue \
    crayon \
    profvis \
    expsmooth \
    RcppArmadillo \
    stringr \
    Matrix \
    igraph \
    gridExtra \
    GGally


RUN install2.r --error \
    rvest \
    tidyverse \
    forecast

COPY book /home/rstudio/book

RUN chmod a+rwx -R /home/rstudio/book
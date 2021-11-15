FROM rstudio/r-session-complete-preview:bionic-2022.01.0-daily-192.pro1

# install module
RUN set -x \
    && apt-get update \
    && apt-get install -y tcl \
    && apt-get install -y environment-modules \
    && . /etc/profile

WORKDIR /custom 
ARG R_VERSION_ALT=4.0.2
RUN apt-get update -qq && \
    curl -O https://cran.rstudio.com/src/base/R-4/R-${R_VERSION_ALT}.tar.gz && \
    tar -xzvf R-${R_VERSION_ALT}.tar.gz && \
    cd R-${R_VERSION_ALT} && \
    ./configure \
       --prefix=/custom/R/${R_VERSION_ALT} \
       --with-readline=no \
       --with-x=no \
       --enable-memory-profiling \
       --enable-R-shlib \
       --with-blas \
       --with-lapack && \
    make && \
    make install

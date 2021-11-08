FROM rstudio/r-session-complete-preview:bionic-2022.01.1-daily-189.pro1

# install module
#RUN set -x \
#    && apt-get update \
#    && apt-get install -y environment-modules

ARG R_VERSION_ALT=4.1.0
RUN apt-get update -qq && \
    curl -O https://cdn.rstudio.com/r/ubuntu-1804/pkgs/r-${R_VERSION_ALT}_1_amd64.deb && \
    DEBIAN_FRONTEND=noninteractive gdebi --non-interactive r-${R_VERSION_ALT}_1_amd64.deb && \
    rm -f ./r-${R_VERSION_ALT}_1_amd64.deb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


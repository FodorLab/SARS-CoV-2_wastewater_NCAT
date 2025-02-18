# hash:sha256:3eee008f2c690534579483b37624b71a4ae534732e8c5243d1254bb760d4119c
FROM registry.codeocean.com/codeocean/r-studio:2022.07.0-548-r4.2.1-ubuntu18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        openjdk-8-jdk \
        pandoc \
    && rm -rf /var/lib/apt/lists/*

RUN Rscript -e 'remotes::install_version("Hmisc", "5.1.3")' \
    && Rscript -e 'remotes::install_version("dplyr", "1.1.4")' \
    && Rscript -e 'remotes::install_version("ggplot2", "3.5.1")' \
    && Rscript -e 'remotes::install_version("ggrepel")' \
    && Rscript -e 'remotes::install_version("lubridate", "1.9.3")' \
    && Rscript -e 'remotes::install_version("rmarkdown")' \
    && Rscript -e 'remotes::install_version("tidyr", "1.3.1")'

COPY postInstall /
RUN /postInstall

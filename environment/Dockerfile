# hash:sha256:10547fd14b2128f4c87bafbca4f0b39a0e09b08ac180360b1cc4f6a5d4a27682
FROM registry.codeocean.com/codeocean/r-studio:2022.07.0-548-r4.2.1-ubuntu18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        openjdk-8-jdk=8u372-ga~us1-0ubuntu1~18.04 \
        pandoc=1.19.2.4~dfsg-1build4 \
    && rm -rf /var/lib/apt/lists/*

RUN Rscript -e 'remotes::install_version("Hmisc", "5.1-3")' \
    && Rscript -e 'remotes::install_version("dplyr", "1.1.4")' \
    && Rscript -e 'remotes::install_version("ggplot2", "3.5.1")' \
    && Rscript -e 'remotes::install_version("ggrepel", "0.9.6")' \
    && Rscript -e 'remotes::install_version("lubridate", "1.9.3")' \
    && Rscript -e 'remotes::install_version("rmarkdown", "2.29")' \
    && Rscript -e 'remotes::install_version("tidyr", "1.3.1")'

COPY postInstall /
RUN /postInstall

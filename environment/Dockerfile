# hash:sha256:ae9249de7f720211ab069f75c5d1dde7184bd3fb969b749996d315d26252d581
FROM registry.codeocean.com/codeocean/r-studio:2022.07.0-548-r4.2.1-ubuntu18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN Rscript -e 'remotes::install_version("Hmisc", "5.1.3")' \
    && Rscript -e 'remotes::install_version("dplyr", "1.1.4")' \
    && Rscript -e 'remotes::install_version("ggplot2", "3.5.1")' \
    && Rscript -e 'remotes::install_version("ggrepel")' \
    && Rscript -e 'remotes::install_version("lubridate", "1.9.3")' \
    && Rscript -e 'remotes::install_version("rmarkdown")' \
    && Rscript -e 'remotes::install_version("tidyr", "1.3.1")'

COPY postInstall /
RUN /postInstall

# Modified from https://github.com/rocker-org/rocker-versioned2/blob/master/dockerfiles/Dockerfile_rstudio_devel
# and from https://gist.github.com/snystrom/eca67d993c579c3416cda63590d9080a#file-dockerfile
FROM rocker/r-ver:4.0.3

ENV S6_VERSION=v1.21.7.0
# Changed rstudio version from "latest" TO 1.2.5042
ENV RSTUDIO_VERSION=1.2.5042
ENV PATH=/usr/lib/rstudio-server/bin:$PATH

RUN /rocker_scripts/install_rstudio.sh
RUN /rocker_scripts/install_pandoc.sh

EXPOSE 8787

CMD ["/init"]

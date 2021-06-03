FROM ubuntu:20.04

WORKDIR /cuda-pf

RUN apt update
#RUN DEBIAN_FRONTEND='noninteractive' apt install --no-install-recommends -y \
RUN DEBIAN_FRONTEND='noninteractive' apt install -y \
    nsight-systems nsight-compute nvidia-cuda-toolkit \
    vim git \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*



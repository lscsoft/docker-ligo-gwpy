# Turns out DockerHub does not yet support multi-stage builds!
# Wait for it to use Docker 17.05!
#FROM ligo/builder:jessie as builder
FROM ligo/builder:jessie

WORKDIR /root/
RUN apt-get update && \
    apt-get --assume-yes install \
      wget \
      pkg-config \
      python \
      python-dev \
      python-pip \
      python-numpy \
      python-scipy \
      python-matplotlib \
      python-h5py \
      python-astropy \
      python-glue \
      python-six \
      libblas-dev \
      liblapack-dev \
      libssl-dev \
      gfortran && \
    pip install --user gwpy

#FROM ligo/base:jessie
#WORKDIR /root/
#COPY --from=builder

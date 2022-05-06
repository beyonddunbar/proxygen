FROM containers.cisco.com/webexintelligence/base

RUN set -eux \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends --no-install-suggests -y \
        gcc-10 \
        g++-10 \
        make \
        cmake \
        git \
        gperf \
        libboost-all-dev \
        libcurl4-openssl-dev \
        libdouble-conversion-dev \
        libgoogle-glog-dev \
        liblz4-dev \
        liblzma-dev \
        libbz2-dev \
        libsodium-dev \
    && update-alternatives \
        --install /usr/bin/gcc gcc /usr/bin/gcc-10 100 \
        --slave /usr/bin/g++ g++ /usr/bin/g++-10 \
        --slave /usr/bin/gcov gcov /usr/bin/gcov-10

WORKDIR /workdir
CMD ./build_proxygen.sh
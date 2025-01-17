FROM debian:bullseye-slim

WORKDIR /app

# Install build dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libreadline-dev \
    wget \
    autoconf \
    automake \
    libtool \
    pkg-config \
    libpcre3-dev \
    libncurses5-dev \
    libncursesw5-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Build and install GNU APL
RUN wget https://ftp.gnu.org/gnu/apl/apl-1.8.tar.gz && \
    tar xvf apl-1.8.tar.gz && \
    cd apl-1.8 && \
    ./configure --prefix=/usr/local CXXFLAGS="-g -O0 -Wno-error=class-memaccess" && \
    make && \
    make install && \
    cd .. && \
    rm -rf apl-1.8*

WORKDIR /app

# Create APL script
COPY combined.apl /app/combined.apl

# Create run script
RUN echo '#!/bin/bash' > /run.sh && \
    echo 'cd /app' >> /run.sh && \
    echo 'apl -s -f combined.apl' >> /run.sh && \
    chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
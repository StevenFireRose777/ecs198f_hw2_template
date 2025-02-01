FROM debian:bookworm

COPY . .

WORKDIR /

RUN apt-get update && apt-get upgrade -y && apt-get install -y wget git

RUN mkdir -p ~/miniconda3
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/Miniconda3-latest-Linux-x86_64.sh && \
    bash ~/Miniconda3-latest-Linux-x86_64.sh -b -f -p ~/miniconda3 && \
    rm ~/Miniconda3-latest-Linux-x86_64.sh && \
    ~/miniconda3/bin/conda init bash

RUN git clone https://github.com/dbarnett/python-helloworld.git

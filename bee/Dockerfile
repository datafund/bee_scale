FROM ethersphere/bee:1.12.0
USER root
RUN apt-get update
RUN apt-get -y --no-install-recommends install curl ca-certificates
RUN apt-get autoremove -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
USER bee

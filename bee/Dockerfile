FROM ethersphere/bee:1.17.5
USER root
RUN apt-get update
RUN apt-get -y --no-install-recommends install curl ca-certificates
RUN apt-get autoremove -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
COPY bee_start.sh /bin/bee_start.sh
USER bee
ENTRYPOINT ["/bin/bee_start.sh"]

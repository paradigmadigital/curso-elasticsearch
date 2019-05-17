FROM anapsix/alpine-java

ENV CEREBRO_VERSION 0.8.1

# Alpine Certificates
RUN \
  apk update && \
  apk add ca-certificates wget && \
  update-ca-certificates

# Install Cerebro
WORKDIR /tmp
RUN \
  wget https://github.com/lmenezes/cerebro/releases/download/v$CEREBRO_VERSION/cerebro-$CEREBRO_VERSION.tgz && \
  tar -xvf cerebro-$CEREBRO_VERSION.tgz && \
  rm cerebro-$CEREBRO_VERSION.tgz && \
  mv cerebro-$CEREBRO_VERSION /cerebro

# Copy config
COPY conf/application.conf /cerebro/conf/application.conf

# Define default command.
ENTRYPOINT ["/cerebro/bin/cerebro"]

EXPOSE 9001 9000

FROM maxfouquet/jnlp-slave:latest
LABEL maintainer="Max Fouquet <fouquet.max@gmail.com>"

RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
    apt-get update && \
    apt-get install -y nodejs

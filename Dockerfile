FROM maxfouquet/jnlp-slave:latest
LABEL maintainer="Max Fouquet <fouquet.max@gmail.com>"

ENV SONAR_SCANNER_VERSION="3.2.0.1227"

RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
    apt-get update && \
    apt-get install -y wget  && \
    apt-get install -y unzip && \
    apt-get install -y nodejs

# Sonarqube
RUN wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-$SONAR_SCANNER_VERSION-linux.zip && \
    unzip sonar-scanner-cli-$SONAR_SCANNER_VERSION-linux.zip && \
    mv sonar-scanner-$SONAR_SCANNER_VERSION-linux /opt/sonar && \
    chmod u+x -R /opt/sonar/bin && \
    rm sonar-scanner-cli-$SONAR_SCANNER_VERSION-linux.zip

FROM ubuntu:22.04
RUN \
    set -ex && \
    apt-get update && \
    apt-get install -yq --no-install-recommends \
        build-essential vim wget ca-certificates
RUN wget -O- --no-check-certificate https://aka.ms/install-vscode-server/setup.sh | sh

RUN mkdir -p /vscode/data
RUN mkdir -p /vscode/workspace

ENV VSCODE_SERVER_DATA_DIR /vscode/data

VOLUME /vscode/data
VOLUME /vscode/workspace

ENTRYPOINT ["/usr/local/bin/code-server"]
CMD ["--accept-server-license-terms"]

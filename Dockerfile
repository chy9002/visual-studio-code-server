FROM ubuntu:22.04
RUN \
    set -ex && \
    apt-get update && \
    apt-get install -yq --no-install-recommends \
        build-essential vim wget
RUN wget -O- https://aka.ms/install-vscode-server/setup.sh | sh

CMD ["code-server"]
#
# qbittorrent with docker
#
FROM linuxserver/qbittorrent:amd64-latest
# add tmm.sh
ADD tmm.sh /
RUN \
    chmod +x /tmm.sh && \
    apt-get update && \
    apt-get install -y \
        ca-certificates \
        curl \
        gnupg \
        lsb-release && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
    echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null && \
    apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io && \
    echo "**** cleanup ****" && \
    apt-get clean && \
    rm -rf \
       /tmp/* \
       /var/lib/apt/lists/* \
       /var/tmp/*




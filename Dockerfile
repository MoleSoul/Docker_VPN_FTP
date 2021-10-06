FROM debian:buster-slim

RUN apt-get update && apt-get install -y openconnect curl lsof procps && \
    apt-get clean && \
    rm -rf /var/cache/apt/* && \
    rm -rf /var/lib/apt/lists/*

COPY vpn_connect vpn_script /usr/bin/
RUN chmod +x /usr/bin/vpn_connect & chmod +x /usr/bin/vpn_script

LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="krtoslav/vpn_ftp" \
    org.label-schema.description="Deploy via VPN and FTP" \
    org.label-schema.vcs-url="https://github.com/MoleSoul/Docker_VPN_FTP"

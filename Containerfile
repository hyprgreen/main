ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION:-38}"
FROM ghcr.io/ublue-os/base-main:"${FEDORA_MAJOR_VERSION}"

COPY ./etc /etc
COPY ./usr /usr

COPY ./builder.sh /tmp/builder.sh
RUN bash /tmp/builder.sh

COPY --from=ghcr.io/vibrantleaf/doas-sudo-shim-builder:master /usr/bin/sudo /usr/bin/sudo
COPY --from=ghcr.io/vibrantleaf/doas-sudo-shim-builder:master  /usr/share/man/man1/sudo.1 /usr/share/man/man1/sudo.1
RUN chmod +x /usr/bin/sudo

RUN rm -rf /tmp/* /var/*
RUN ostree container commit
RUN mkdir -p /var/tmp && chmod -R 1777 /var/tmp

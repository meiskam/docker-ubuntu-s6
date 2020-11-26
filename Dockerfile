FROM meiskam/ubuntu-without-s6:18.04

##
## ROOTFS
##

# root filesystem
COPY rootfs /

# s6 overlay
ADD https://github.com/just-containers/s6-overlay/releases/download/v2.1.0.2/s6-overlay-amd64-installer /tmp/
RUN chmod +x /tmp/s6-overlay-amd64-installer && /tmp/s6-overlay-amd64-installer /

##
## INIT
##

ENTRYPOINT [ "/init" ]

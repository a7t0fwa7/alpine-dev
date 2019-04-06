FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add bash alpine-sdk shadow xz

RUN addgroup -g 1000 sudo && \
    echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    addgroup -g 2000 builder && \
    adduser -D -u 2001 -G builder builder && \
    usermod -a -G abuild builder && \
    usermod -a -G sudo builder
USER builder

WORKDIR /home/builder
RUN abuild-keygen -a -n && \
    sudo cp /home/builder/.abuild/*.rsa.pub /etc/apk/keys

RUN git clone --progress https://github.com/polyverse/aports.git

ENTRYPOINT ["/bin/bash"]


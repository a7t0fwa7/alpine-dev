FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add bash alpine-sdk shadow

RUN addgroup -g 2000 builder && \
    adduser -D -u 2001 -G builder builder && \
    usermod -a -G abuild builder
USER builder

WORKDIR /home/builder
RUN abuild-keygen -a -n
RUN git clone --progress https://github.com/polyverse/aports.git

ENTRYPOINT ["/bin/bash"]


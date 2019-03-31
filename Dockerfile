FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add bash alpine-sdk

RUN addgroup -g 2000 builder && \
    adduser -D -u 2001 -G builder builder
USER builder

RUN cd ~ && git clone https://github.com/polyverse/aports.git

ENTRYPOINT ["/bin/bash"]


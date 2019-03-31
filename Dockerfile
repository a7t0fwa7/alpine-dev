FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add bash alpine-sdk

RUN groupadd -g 2000 builder && \
    useradd -m -u 2001 -g builder builder
USER builder

RUN cd ~ && git clone https://github.com/polyverse/aports.git

ENTRYPOINT ["/bin/bash"]


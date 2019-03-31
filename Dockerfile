FROM alpine

RUN apk update && apk upgrade
RUN apk add bash alpine-sdk
RUN cd ~ && git clone https://github.com/polyverse/aports.git

ENTRYPOINT ["/bin/bash"]


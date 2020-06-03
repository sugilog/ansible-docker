FROM alpine:3.12.0

# https://pkgs.alpinelinux.org/packages?name=ansible&branch=edge
ENV APK_ANSIBLE_VERSION 2.9.9-r0

RUN apk add --update make ansible=${APK_ANSIBLE_VERSION} py3-pip openssh git && \
  pip3 install --upgrade pip botocore boto3

FROM alpine:3.8

ARG NSUPDATE_GIT_REPO=https://github.com/nsupdate-info/nsupdate.info
ARG NSUPDATE_TAG=0.12.0

RUN apk --no-cache add \
  git

RUN mkdir -p /nsupdate && \
  cd /nsupdate && \
  git clone ${NSUPDATE_GIT_REPO} && \
  git checkout ${NSUPDATE_TAG}

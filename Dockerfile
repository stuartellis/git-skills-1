FROM alpine:3.8

## Image metadata ##

LABEL maintainer="stuart@stuartellis.name" \
     version="0.1.0" \
    description="Hugo Website Builder"

ENV HUGO_VERSION 0.53
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit.tar.gz

RUN apk add --update wget ca-certificates && \
  rm /var/cache/apk/*

## Install Hugo ##

RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} && \
  tar xzf ${HUGO_BINARY} && \
  rm -r ${HUGO_BINARY} && \
  mv hugo /usr/local/bin

## Run Hugo server ##
WORKDIR /var/local
EXPOSE 1313
CMD [ "hugo", "server", "--bind=0.0.0.0" ] 

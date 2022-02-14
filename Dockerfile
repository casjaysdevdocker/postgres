FROM casjaysdev/php:latest

ARG BUILD_DATE="$(date +'%Y-%m-%d %H:%M')" 

LABEL \
  org.label-schema.name="postgresql" \
  org.label-schema.description="Web interface to mpd" \
  org.label-schema.url="https://github.com/casjaysdev/ympd" \
  org.label-schema.vcs-url="https://github.com/casjaysdev/ympd" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.version=$BUILD_DATE \
  org.label-schema.vcs-ref=$BUILD_DATE \
  org.label-schema.license="MIT" \
  org.label-schema.vcs-type="Git" \
  org.label-schema.schema-version="1.0" \
  org.label-schema.vendor="CasjaysDev" \
  maintainer="CasjaysDev <docker-admin@casjaysdev.com>" 

RUN apk -U upgrade && apk add postgresql 

FROM golang:1.16-alpine AS builder

ARG bin
ARG dir

WORKDIR ${dir}/

COPY . ${dir}/

RUN apk update && apk add --no-cache make && make name=${bin}

FROM alpine

ARG bin
ARG dir

COPY --from=builder ${dir}/${bin} /${bin}

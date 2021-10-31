FROM ubuntu:latest

RUN apt update -y && \
    apt install -y vim translate-shell language-pack-ja-base language-pack-ja locales bsdmainutils && \
    locale-gen ja_JP.UTF-8

ENV LANG "ja_JP.UTF-8"

WORKDIR /tmp
COPY sample-deployment.yaml .
COPY vimrc /root/.vimrc

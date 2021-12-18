FROM python:alpine3.15

RUN apk add --update --no-cache ffmpeg gcc musl-dev
RUN pip install --upgrade pip
RUN pip install yt-dlp

COPY ./yt-dlp.conf /etc/yt-dlp.conf

WORKDIR /media

FROM debian:bookworm-slim
ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y && \
    apt upgrade -y && \
    apt install -y \
    ffmpeg

COPY stream_videos.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/stream_videos.sh

ENTRYPOINT ["/usr/local/bin/stream_videos.sh"]

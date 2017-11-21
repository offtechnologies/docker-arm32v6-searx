FROM offtechnologies/docker-arm32v6-base-image-alpine-qemu:latest

ENV SEARX_VERSION v0.12.0
ENV BASE_URL=False IMAGE_PROXY=False
ENV UID=911 GID=911

RUN apk -U upgrade \
&& apk add -t build-dependencies \
    build-base \
    python-dev \
    libffi-dev \
    libxslt-dev \
    libxml2-dev \
    openssl-dev \
    tar \
    libssl1.0 \
    musl \
    wget \
    ca-certificates \
 && apk add \
    su-exec \
    python \
    libxml2 \
    libxslt \
    openssl \
    tini \
    py2-pip \
 && mkdir /usr/local/searx && cd /usr/local/searx \
 && wget -O- https://github.com/asciimoo/searx/archive/${SEARX_VERSION}.tar.gz | tar xz --strip 1 \
 && pip install --no-cache -r requirements.txt \
 && sed -i "s/127.0.0.1/0.0.0.0/g" searx/settings.yml \
 && apk del build-dependencies \
 && rm -f /var/cache/apk/*

COPY run.sh /usr/local/bin/run.sh

EXPOSE 8888

CMD ["/usr/local/bin/run.sh"]

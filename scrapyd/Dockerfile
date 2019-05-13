# Based on https://hub.docker.com/r/harrisbaird/scrapyd/dockerfile
FROM python:3.7-alpine

ENV LIBRARY_PATH=/lib:/usr/lib

ENV RUNTIME_PACKAGES ca-certificates libxslt libxml2 git libpq
ENV BUILD_PACKAGES build-base libxslt-dev libxml2-dev libffi-dev openssl-dev postgresql-dev

# Fix CDN & set timezone.
RUN echo "https://mirrors.tuna.tsinghua.edu.cn/alpine/v$(cat /etc/alpine-release | cut -c0-3)/main/" | tee /etc/apk/repositories && \
    apk update && \
    apk upgrade && \
    apk add --no-cache --update ${RUNTIME_PACKAGES} ${BUILD_PACKAGES} && \
    pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
    pip --no-cache-dir install -U pip && \
    pip --no-cache-dir install \
      scrapy \
      scrapy-redis \
      pycryptodome \
      beautifulsoup4 \
      lxml \
      SQLAlchemy \
      psycopg2 \
      git+https://github.com/scrapy/scrapyd.git && \
    apk del ${BUILD_PACKAGES} && \
    rm -rf /root/.cache

COPY ./scrapyd.conf /etc/scrapyd/
VOLUME /etc/scrapyd/

EXPOSE 6800

CMD ["scrapyd", "--pidfile="]
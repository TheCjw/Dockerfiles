FROM python:3.7-alpine

ENV SCRAPYDWEB_HOME /home/scrapydweb

# Fix CDN & set timezone.
RUN echo "https://mirrors.tuna.tsinghua.edu.cn/alpine/v$(cat /etc/alpine-release | cut -c0-3)/main/" | tee /etc/apk/repositories && \
    apk update && \
    apk upgrade && \
    apk add --no-cache --update git && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" >  /etc/timezone && \
    pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
    pip --no-cache-dir install -U pip && \
    pip --no-cache-dir install git+https://github.com/my8100/scrapydweb.git && \
    rm -rf /root/.cache

VOLUME ${SCRAPYDWEB_HOME}

WORKDIR ${SCRAPYDWEB_HOME}

EXPOSE 5000

CMD ["scrapydweb"]
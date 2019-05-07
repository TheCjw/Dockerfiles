FROM python:3.7

ENV TZ Asia/Shanghai

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
  pip --no-cache-dir install -U pip \
  scrapy \
  scrapy-redis \
  pika \
  pycryptodome \
  git+https://github.com/scrapy/scrapyd.git

COPY ./scrapyd.conf /etc/scrapyd/
VOLUME /etc/scrapyd/

EXPOSE 6800

CMD ["scrapyd", "--pidfile="]

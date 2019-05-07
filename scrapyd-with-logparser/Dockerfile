FROM thecjw/scrapyd:latest

ENV TZ Asia/Shanghai

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
  pip --no-cache-dir install -U pip \
  git+https://github.com/my8100/logparser.git

EXPOSE 6800

COPY start.sh /etc/scrapyd/

CMD ["/bin/sh", "/etc/scrapyd/start.sh"]

FROM thecjw/scrapyd:latest

RUN pip --no-cache-dir install -U pip \
  git+https://github.com/my8100/logparser.git

EXPOSE 6800

COPY start.sh /etc/scrapyd/

CMD ["/bin/sh", "/etc/scrapyd/start.sh"]

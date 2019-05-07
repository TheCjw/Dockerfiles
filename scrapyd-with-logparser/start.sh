#!/bin/sh

mkdir /etc/scrapyd/logs

logparser -ss http://127.0.0.1:6800 -dir /etc/scrapyd/logs &

scrapyd --pidfile=
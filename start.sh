#!/bin/sh
cd /opt/zproxy
/usr/bin/wine python.exe zproxy_server.py > /dev/null 2>&1

SHELL=/bin/bash
PATH=/sbin:/bin:/usr/sbin:usr/bin





#!/bin/bash

service httpd status > output.txt

if grep -q "running" output.txt; then
echo "the httpd service is running"

else
service httpd start
echo "The httpd service was stopped, errored, or inactive. The service has been started>"
fi

sudo rm -f output.txt

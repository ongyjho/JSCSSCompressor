#!/bin/sh

ls -al

java -jar /yui-compressor/yuicompressor/build/yuicompressor-2.4.2.jar main.js -o combined.js
exit 1;
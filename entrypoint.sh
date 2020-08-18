#!/bin/sh

ls -al
java -jar yuicompressor-2.4.2.jar main.js -o combined.js
exit 1;
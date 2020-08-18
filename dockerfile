FROM dokken/ubuntu-16.04

LABEL "com.github.actions.name"="yui-compressor for PSTP"
LABEL "com.github.actions.color"="green"

LABEL version="0.5"
LABEL repository="https://github.com/ongyjho/yui-compressor-for-pstp"
LABEL maintainer="ongyjho <ongyjho@gmail.com>"

RUN apt-get update\
    && apt-get -y --no-install-recommends install yui-compressor

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN ls -al
RUN java -jar yuicompressor-2.4.2.jar main.js -o combined.js

ENTRYPOINT ["/entrypoint.sh"]
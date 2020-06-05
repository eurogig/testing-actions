FROM alpine:3.11

RUN wget --user $AQUA_EMAIL --password $AQUA_PW https://download.aquasec.com/scanner/$SCANNER_VERSION/scannercli        
RUN chmod +x scannercli
RUN mkdir /opt/aquascans
RUN mv scannercli /opt/aquascans

ENTRYPOINT ["/opt/aquascans/scannercli"]

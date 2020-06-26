FROM alpine:latest
ARG PBVER=1.0
RUN apk --no-cache add bash vim python3 py3-pip build-base python3-dev libffi-dev openssl-dev
RUN pip3 install pushbullet-cli==${PBVER}
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
LABEL PROJECT=pbcli

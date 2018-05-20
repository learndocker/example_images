FROM alpine:latest

RUN apk update && apk add bash
COPY traptest.sh /

CMD ["/traptest.sh"]

LABEL maintainer="julian@learndocker.online" website="https://LearnDocker.online"

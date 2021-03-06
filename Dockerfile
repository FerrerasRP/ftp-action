FROM alpine:3.11

COPY LICENSE README.md /

# RUN apk --no-cache add lftp
RUN apk --no-cache add lftp
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

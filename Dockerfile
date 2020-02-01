FROM alpine:latest
RUN apk add --no-cache inotify-tools
CMD inotifywait -mrq -e CREATE --format %w%f /watch | while read FILE; do /bin/sh /command.sh "$FILE"; done

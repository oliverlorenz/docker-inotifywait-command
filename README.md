# inotifywait-command

Simple Alpine container that waits for a file to be created in the /watch volume and executes a command.sh

## usage

create a `command.sh` file and do whatever you want. Don't forget to make this file executable.

```
docker run -d \
  -v $(pwd)/command.sh:/command.sh \
  -v /tmp/input:/watch oliverlorenz/inotifywait-command
```

# gkeep-login
A docker image to generate a login token for GKeepAPI

Available as `davidlang42/gkeep-login:latest` on [Docker Hub](https://hub.docker.com/r/davidlang42/gkeep-login)

Usage: `docker run -it --rm -e GOOGLE_USERNAME="example@gmail.com" -e GOOGLE_APP_PASSWORD="abcd efgh ijkl mnop" davidlang42/gkeep-login`

## Why is this nessesary?

- https://github.com/kiwiz/gkeepapi/issues/81
- https://github.com/kiwiz/gkeepapi/issues/144
- https://github.com/djsudduth/keep-it-markdown/issues/72#issuecomment-1793495242

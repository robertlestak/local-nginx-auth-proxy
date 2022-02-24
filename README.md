# local nginx auth proxy

a local proxy which adds `Authorization: Bearer [JWT]` header to outbound requests to an origin. useful when doing local testing against a remote service which implements an auth proxy / middleware / contextual auth.

## dependencies

- docker
- docker-compose (optional)

## usage

### docker-compose

```bash
cp .env-sample .env
# enter the origin domain (no protocol - we assume / expect https)
# enter your JWT
docker-compose up -d
# connect your local app to http://localhost:8080 and all outbound requests will have token added
# once done, stop local
docker-compose down
```
### vanilla docker

```bash
docker build . -t authproxy
docker run -d \
    -p 8080:80 \
    --env-file .env \
    authproxy
```
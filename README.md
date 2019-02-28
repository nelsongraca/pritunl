# Unofficial Docker container for Pritunl

[Docker Hub Releases](https://hub.docker.com/r/nelsongraca/pritunl)

## Usage

```sh
docker run \
    -d \
    --privileged \
    -p 1194:1194/udp \
    -p 80:80/tcp \
    -p 443:443/tcp \
    -v pritunlData:/data/db \
    --name pritunl
    nelsongraca/pritunl 
```

You can the access it on https://hostname

To get the default credentials use: `docker exec pritunl pritunl default-password`

Current Pritunl version is 1.29.1994.1 I plan to add more features like disabling the embedded MongoDB if an external is configured.

# DNS recusive resolver container using unbound

## Usage

The default config will listen on port 53 on any private IP range.
Your custom config can be placed at .config/unbound.conf

```
  docker run -d \
    --name unbound \
    --cap-add=NET_ADMIN \
    -v $PWD/config:/etc/unbound/ #optional \
    -p 53:53/udp \
    -p 53:53/tcp \
    iofq/unbound
```


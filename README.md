# dyfi-update-docker

![Docker Build Status](https://img.shields.io/docker/build/jalle19/dyfi-update)

Yet another Docker image for handling dy.fi updates

## Why yet another?

* Some existing images use `curl` or `wget` directly and need to be run regularly
* Some ship a copy of `dyfi-update.pl`, meaning you have to read through it and trust that no one has altered it
* Some overcomplicate things by using shared volumes for the configuration file etc.

## Usage

Your e-mail, password and hosts are passed via environment variables. For example:

```bash
docker run -it --env USER=foo@example.com --env PASS=bar --env HOSTS=example.com jalle19/dyfi-update
```

## License

GNU GENERAL PUBLIC LICENSE Version 2

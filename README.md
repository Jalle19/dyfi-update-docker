# dyfi-update-docker

Yet another Docker image for handling dy.fi updates

## Why yet another?

* Some existing images use `curl` or `wget` directly and need to be run regularly
* Some ship a copy of `dyfi-update.pl`, meaning you have to read through it and trust that no one has altered it
* Some overcomplicate things by using shared volumes for the configuration file etc.

## Usage

Your e-mail, password and hosts are passed via environment variables. For example:

```bash
docker run -it jalle19/dyfi-update --env USER=foo@example.com --env PASS=bar --env HOSTS="example.com foo.example.com"
```

## License

GNU GENERAL PUBLIC LICENSE Version 2

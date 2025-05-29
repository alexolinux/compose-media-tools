# compose-media-tools

---------------------

Orchestrated Media Tools for **[Raspberry PI](https://www.raspberrypi.com/tutorials/)**

```shell
.
│
├── docker-compose.yml
├── env_template
├── LICENSE
├── Makefile
└── README.md

2 directories, 6 files
```

## Requirements

* [docker](https://www.docker.com/get-started/)
* [docker-compose](https://github.com/docker/compose/releases)

## Container/Services

* [portainer](https://github.com/portainer/portainer-compose/blob/master/docker-stack.yml)
* [jellyfin](https://jellyfin.org/docs/general/installation/container/)
* [nextcloud](https://github.com/nextcloud/docker)
* [mariadb](https://hub.docker.com/_/mariadb)
* [redis](https://www.docker.com/blog/how-to-use-the-redis-docker-official-image)

### `.env`

Add required `.env` to be loaded by `docker-compose.yml`

* `.env`: Create/change these values according to your needs using `env_template` sample template file.

## Make

Use make to manage your environment.

```yaml
Usage:
  make start       Start the Docker Compose environment
  make stop        Stop the Docker Compose environment
  make restart     Restart the Docker Compose environment
  make help        Display this help message
```

## More cool docker-compose projects

https://github.com/docker/awesome-compose/tree/master

**Author:**
Alex Mendes

<https://www.linkedin.com/in/mendesalex/>

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

* `.env` sample template: Change these values according to your needs.

```shell
CONFIG="${HOME}/.config/microservices"
TZ="UTC"
HOST_USER="sysadmin"
HOST_UID=1000
HOST_GID=1000
SUBDOMAINS=<subdomains_here>
JELLYFIN_VERSION=10.10.7
MARIADB_VERSION=10.5.28
REDIS_VERSION=7.4
OWNCLOUD_VERSION=10.15
OWNCLOUD_DOMAIN=localhost:8080
OWNCLOUD_PORT=8080
OWNCLOUD_TRUSTED_DOMAINS=localhost,192.168.0.100
ADMIN_USERNAME=<owncloud_user_here>
ADMIN_PASSWORD=<owncloud_password_here>
DATA_CLOUD=<owncloud_mountpoint_files>
DATA_MEDIA=<jellyfin_mountpoint_files>
OWNCLOUD_DB_NAME=owncloud
OWNCLOUD_DB_USERNAME=owncloud
OWNCLOUD_DB_PASSWORD=owncloud
OWNCLOUD_DB_HOST=mariadb
OWNCLOUD_REDIS_HOST=redis
MYSQL_ROOT_PASSWORD=owncloud
MYSQL_USER=owncloud
MYSQL_PASSWORD=owncloud
MYSQL_DATABASE=owncloud
```

## Make

Use make to manage your environment.

```yaml
Usage:
  make start       Start the Docker Compose environment
  make stop        Stop the Docker Compose environment
  make restart     Restart the Docker Compose environment
  make help        Display this help message
```

### owncloud Local Storage

[Local External Storage](https://doc.owncloud.com/server/next/admin_manual/configuration/files/external_storage/local.html) is only configurable via the ownCloud admin settings.

* Enable Local Storage

Add the specified line to the `config.php` in owncloud container:

```shell
'files_external_allow_create_new_local' => 'true',
```

:diamond_shape_with_a_dot_inside: *I have created a script to add this line inside of the owncloud container. It is available on `config/init-ext.sh`*

:skull: *Using **Local Storage** is a security risk, only use it if you know what you are doing.*

## More cool docker-compose projects

https://github.com/docker/awesome-compose/tree/master

**Author:**
Alex Mendes

<https://www.linkedin.com/in/mendesalex/>

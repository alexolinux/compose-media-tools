# compose-media-tools
Orchestrated Media Tools for Raspberry PI

```shell
.
├── docker-compose.yml
├── .env
├── LICENSE
└── README.md
```

## Container/Services

* [pihole](https://github.com/pi-hole/docker-pi-hole)
* [portainer](https://github.com/portainer/portainer-compose/blob/master/docker-stack.yml)
* [proxymanager](https://nginxproxymanager.com/setup/)
* [duckdns](https://docs.linuxserver.io/images/docker-duckdns/)
* [jellyfin](https://jellyfin.org/docs/general/installation/container/)
* [owncloud](https://doc.owncloud.com/server/next/admin_manual/installation/docker/#docker-compose)
* [mariadb](https://hub.docker.com/_/mariadb)
* [redis](https://www.docker.com/blog/how-to-use-the-redis-docker-official-image)

### `.env`

Add required `.env` to be loaded by `docker-compose.yml`

* `.env` sample template

```shell
PIHOLE_ETC="/etc/pihole"
PIHOLE_PASSWORD="<pihole_admin_pass_here>"
MARIADB_VERSION=10.11
REDIS_VERSION=6
PROXYMANAGER_VERSION="latest"
JELLYFIN_VERSION=10.10.1
OWNCLOUD_VERSION=10.15
DATA_MEDIA="/DATA"
DATA_CLOUD="/CLOUDATA"
OWNCLOUD_DOMAIN=localhost:8080
OWNCLOUD_PORT=8080
OWNCLOUD_TRUSTED_DOMAINS=localhost
ADMIN_USERNAME=admin
ADMIN_PASSWORD=<admin_pass_here>
TZ="UTC"
HOST_USER="sysadmin"
HOST_UID=1001
HOST_GID=1001
SUBDOMAINS="local"
DUCKDNS_API=<api_token_here>
DUCKDNS_PORT=8089
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
echo "'files_external_allow_create_new_local' => 'true'," >> /var/www/owncloud/config/config.php
```

*Using **Local Storage** is a security risk, only use it if you know what you are doing.*

## More cool docker-compose projects

https://github.com/docker/awesome-compose/tree/master


**Author:**
Alex Mendes

<https://www.linkedin.com/in/mendesalex/>


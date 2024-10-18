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

* portainer
* proxymanager
* jellyfin
* (owncloud)[https://doc.owncloud.com/server/next/admin_manual/installation/docker/#docker-compose]
* mariadb (for owncloud)
* redis (for owncloud)

## .env

Add required `.env` to be read by `docker-compose.yml`


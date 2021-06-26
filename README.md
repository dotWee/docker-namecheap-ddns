# [docker-namecheap-ddns](https://github.com/dotWee/docker-namecheap-ddns)

Originally based upon [_@EdwardChamberlain's_](https://github.com/EdwardChamberlain/namecheap_ddns) [_namecheap_ddns_](https://github.com/EdwardChamberlain/namecheap_ddns).

[Docker Hub Page](https://hub.docker.com/repository/docker/dotwee/namecheap-ddns)

This container is available on unRAID community Applications

This simple container will automatically update a namecheap dynamic dns domain through GET requests. This container checks your public IP every 3 seconds and sends an update if a change is detected.

You MUST provide the required enviroment variables: `APP_HOST`, `APP_DOMAIN`, and `APP_PASSWORD`. You MUST create an 'A + Dynamic DNS' record for the host which you wish to update and enable Dynamic DNS in the manage page of your domain. Your APP_PASSWORD must be your Dynamic DNS password from namecheap and NOT your Namecheap password.

For more info see the [Namecheap help page](https://www.namecheap.com/support/knowledgebase/article.aspx/29/11/how-do-i-use-a-browser-to-dynamically-update-the-hosts-ip/).

## usage

pull docker image from `Docker Hub`:

```bash
$ docker pull dotwee/namecheap-ddns:latest
```

pull docker image from `GitHub Packages`:

```bash
$ docker pull ghcr.io/dotwee/namecheap-ddns:latest
```

### docker image usage

```bash
$ docker run \
    -e APP_HOST='your host' \
    -e APP_DOMAIN='your domain' \
    -e APP_PASSWORD='your ddns password' \
    dotwee/namecheap-ddns:latest
```

### usage with optional args

```bash
$ docker run \
    -e APP_HOST='your host' \
    -e APP_DOMAIN='your domain' \
    -e APP_PASSWORD='your ddns password' \
    -e APP_UPDATE_TIME='time between updates, e.g: '60'' \
    -e APP_LOG_LEVEL='Log Level'
    dotwee/namecheap-ddns:latest
```

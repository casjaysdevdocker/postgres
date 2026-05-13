## 👋 Welcome to postgres 🚀  

postgres README  
  
  
## Install my system scripts  

```shell
 sudo bash -c "$(curl -q -LSsf "https://github.com/systemmgr/installer/raw/main/install.sh")"
 sudo systemmgr --config && sudo systemmgr install scripts  
```
  
## Automatic install/update  
  
```shell
dockermgr update postgres
```
  
## Install and run container
  
```shell
dockerHome="/var/lib/srv/$USER/docker/casjaysdevdocker/postgres/postgres/latest/rootfs"
mkdir -p "/var/lib/srv/$USER/docker/postgres/rootfs"
git clone "https://github.com/dockermgr/postgres" "$HOME/.local/share/CasjaysDev/dockermgr/postgres"
cp -Rfva "$HOME/.local/share/CasjaysDev/dockermgr/postgres/rootfs/." "$dockerHome/"
docker run -d \
--restart always \
--privileged \
--name casjaysdevdocker-postgres-latest \
--hostname postgres \
-e TZ=${TIMEZONE:-America/New_York} \
-v "$dockerHome/data:/data:z" \
-v "$dockerHome/config:/config:z" \
-p 80:80 \
casjaysdevdocker/postgres:latest
```
  
## via docker-compose  
  
```yaml
version: "2"
services:
  ProjectName:
    image: casjaysdevdocker/postgres
    container_name: casjaysdevdocker-postgres
    environment:
      - TZ=America/New_York
      - HOSTNAME=postgres
    volumes:
      - "/var/lib/srv/$USER/docker/casjaysdevdocker/postgres/postgres/latest/rootfs/data:/data:z"
      - "/var/lib/srv/$USER/docker/casjaysdevdocker/postgres/postgres/latest/rootfs/config:/config:z"
    ports:
      - 80:80
    restart: always
```
  
## Get source files  
  
```shell
dockermgr download src casjaysdevdocker/postgres
```
  
OR
  
```shell
git clone "https://github.com/casjaysdevdocker/postgres" "$HOME/Projects/github/casjaysdevdocker/postgres"
```
  
## Build container  
  
```shell
cd "$HOME/Projects/github/casjaysdevdocker/postgres"
buildx 
```
  
## Authors  
  
🤖 casjay: [Github](https://github.com/casjay) 🤖  
⛵ casjaysdevdocker: [Github](https://github.com/casjaysdevdocker) [Docker](https://hub.docker.com/u/casjaysdevdocker) ⛵  

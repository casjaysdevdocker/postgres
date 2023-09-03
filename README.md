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
mkdir -p "$HOME/.local/share/srv/docker/postgres/rootfs"
git clone "https://github.com/dockermgr/postgres" "$HOME/.local/share/CasjaysDev/dockermgr/postgres"
cp -Rfva "$HOME/.local/share/CasjaysDev/dockermgr/postgres/rootfs/." "$HOME/.local/share/srv/docker/postgres/rootfs/"
docker run -d \
--restart always \
--privileged \
--name casjaysdevdocker-postgres \
--hostname postgres \
-e TZ=${TIMEZONE:-America/New_York} \
-v "$HOME/.local/share/srv/docker/casjaysdevdocker-postgres/rootfs/data:/data:z" \
-v "$HOME/.local/share/srv/docker/casjaysdevdocker-postgres/rootfs/config:/config:z" \
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
      - "$HOME/.local/share/srv/docker/casjaysdevdocker-postgres/rootfs/data:/data:z"
      - "$HOME/.local/share/srv/docker/casjaysdevdocker-postgres/rootfs/config:/config:z"
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

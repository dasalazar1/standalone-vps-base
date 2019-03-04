This sets up traefik and portainer for reverse proxy and docker management via UI.

Pre reqs
  - Docker installed
  - Current user in docker group


Create a secure password for the traefik web ui. Copy the output and place into .env.sample file
```bash
sudo apt-get install apache2-utils
htpasswd -nb admin <<secure_password>>
```

Fill out the rest of the .env.sample file

DOMAIN=<<domain of site>>
TRAEFIK=<<third level domain for traefik>>
PORTAINER=<<third level domain for portainer>>
EMAIL=<<your email>>
ADMIN=<<result of password from htpasswd command>>
  
Run the config script.
```bash
./config.sh
```

Start the containers.
```bash
docker-compose up
```

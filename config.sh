#!/bin/bash

# create the acme.json
touch acme.json
chmod 600 acme.json

# copy over env file
mv .env.sample .env

# update traefik.toml
EMAIL="$(grep EMAIL= ./.env | cut -d '=' -f2)"
ADMIN="$(grep ADMIN= ./.env | cut -d '=' -f2)"

sed -i -e "s/EMAIL/${EMAIL}/" traefik.toml
sed -i -e "s/ADMIN/${ADMIN}/" traefik.toml

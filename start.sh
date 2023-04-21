#!/bin/bash

# Load environment variables
source .env

# Substitute placeholders in the YAML template
envsubst < docker-compose.template.yml > docker-compose.yml

# Start containers needed to run home media server
sudo docker compose up -d
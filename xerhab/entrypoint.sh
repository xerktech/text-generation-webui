#!/bin/bash
set -e

# Ensure the models directory exists and has appropriate permissions
# mkdir -p /home/app/text-generation-webui/models
chown -R ${APP_RUNTIME_UID}:${APP_RUNTIME_GID} /home/app/text-generation-webui
chmod -R 777 /home/app/text-generation-webui

# Drop privileges to run the main application as a non-root user
# exec su-exec ${APP_RUNTIME_UID}:${APP_RUNTIME_GID} "$@"

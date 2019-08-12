#!/bin/bash

# Regenerate password files
htpasswd -c -b /etc/mosquitto/passwd "${MOSQUITTO_USER}" "${MOSQUITTO_PASSWORD}"

mosquitto -c /etc/mosquitto/mosquitto.conf

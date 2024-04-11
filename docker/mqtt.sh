#!/bin/sh

echo "Launching MQTT connector"
node src/mqtt.js --mqtt-broker-url ${MQTT_BROKER_URL} --mqtt-username ${MQTT_USERNAME} --mqtt-password ${MQTT_PASSWORD} ${ADDITIONAL_MQTT_OPTIONS}&

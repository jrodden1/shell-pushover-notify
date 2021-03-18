#!/usr/bin/env bash

# Interpolate env vars into a stringified json-like object being sure to escape the ""
PUSHOVER_JSON="{\"token\":\"$PUSHOVER_API_KEY\",\"user\":\"$PUSHOVER_USER_KEY\",\"message\":\"$PUSHOVER_DEPLOY_MESSAGE\",\"title\":\"$PUSHOVER_MESSAGE_TITLE\",\"priority\":1}"

# make the actual cURL call to the pushover api with the info now inside of PUSHOVER_JSON
curl --silent true -H "Content-Type: application/json" -d "$PUSHOVER_JSON" --url "https://api.pushover.net/1/messages.json"
echo " "
echo "Pushover Notification Script Complete"
echo " "
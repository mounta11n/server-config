#!/bin/bash

curl -H "Authorization: Bearer $HETZNER_API_TOKEN" https://api.hetzner.cloud/v1/servers | jq

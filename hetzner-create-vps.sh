#!/bin/bash

curl \
	-X POST \
	-H "Authorization: Bearer $HETZNER_API_TOKEN" \
	-H "Content-Type: application/json" \
	-d '{"image":"ubuntu-22.04","location":"nbg1","name":"my-server","server_type":"cx11","user_data":"#include\nhttps://URLtoCode/config.yaml"}' \
  	'https://api.hetzner.cloud/v1/servers'

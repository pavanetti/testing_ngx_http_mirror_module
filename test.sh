#!/bin/sh


curl localhost:8080/
curl localhost:8080/webhook

curl localhost:8080/webhook \
 -X POST \
 -H "Content-Type: application/json" \
 -d '{"productId": 123456, "quantity": 100}'


curl localhost:8080/webhook \
 -X POST \
 -H "Content-Type: text/plain" \
 -d 'Hello, World!'
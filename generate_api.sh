#!/usr/bin/env bash
openapi bundle openapi.yaml -o openapi/openapi_combined.yaml

openapi-generator-cli generate \
  -i openapi/openapi_combined.yaml \
  -g python-fastapi \
  -o src/generated/

rm -rf openapi

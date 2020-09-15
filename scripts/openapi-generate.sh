#!/bin/bash

root=${PWD}
src=${root}/root.yaml
paths=${root}/paths
out=${root}/openapi/openapi.yaml

if [ ! -e $src ]; then
  echo "root.yaml not found\nplease check: ${src}"
  exit 1
fi

docker run --rm -v "${src}:/local/root.yaml" -v "${paths}:/local/paths/" -v "${out}:/local/openapi/openapi.yaml" \
  openapitools/openapi-generator-cli generate \
    -g openapi-yaml \
    -i /local/root.yaml \
    -o /local/


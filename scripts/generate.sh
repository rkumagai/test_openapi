#/bin/sh

# Generate openapi.yaml from root.yaml
openapi-generator generate -g openapi-yaml -i root.yaml -o openapi

# Generate ruby codes from openapi.yaml
openapi-generator generate -g ruby -i openapi/openapi/openapi.yaml -o dist

# Generate ActiveModel::Serializers from openapi.yaml
./scripts/openapi2ruby/bin/openapi2ruby generate openapi/openapi/openapi.yaml --out serializers

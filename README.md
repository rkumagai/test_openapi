## MEMO


- YAMLファイルの結合

```
openapi-generator generate -g openapi-yaml -i root.yaml -o openapi
```

- Rubyコードの生成

```
openapi-generator generate -g ruby -i openapi/openapi/openapi.yaml -o dist
```

- ActiveModel::Serializerの自動生成

https://github.com/takanamito/openapi2ruby

./scripts/openapi2ruby/bin/openapi2ruby generate openapi/openapi/openapi.yaml --out aaa kk

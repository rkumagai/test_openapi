OpenAPI検証用

1. YAMLファイルの構文・構成管理について
2. Rubyコード自動生成(ActiveModel::Serializer)について

## 手順

1. root.yamlを作成
  - root.yamlとpaths配下のyamlを編集する。
2. openapi.yamlの生成
  - openapi-generatorでroot.yamlからopenapi.yamlを生成する。
  ```
  openapi-generator generate -g openapi-yaml -i root.yaml -o openapi
  ```

3. Rubyコードのl生成
  - openapi2rubyでopenapi.yamlからRubyコードをserializers配下に生成する。
  ```
  ./scripts/openapi2ruby/bin/openapi2ruby generate openapi/openapi/openapi.yaml --out serializers
  ```

# README

## Preparation
### Generate API Client
```
brew install openapi-generator
```

```
openapi-generator generate -i ./config/api_docs/openapi.yml -g ruby -o ./tmp/json_placeholder_client
```

### Install Ruby Gemsbrew install openapi-generator
```
bundle install
```
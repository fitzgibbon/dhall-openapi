{ openapi      = "3.1.0"
, info         = { title = "", version = "" }
, servers      = [] : List ./types/Server.dhall
, paths        = [] : List ./types/v3_1/Paths.dhall
, components   = [{=}]
, security     = [{=}]
, tags         = [] : List ./types/Tag.dhall
, externalDocs = { url = "" }
, jsonSchemaDialect = "https://json-schema.org/draft/2020-12/schema"
, webhooks     = [] : List { mapKey : Text, mapValue : ./types/v3_1/PathItem.dhall }
} : ./types/v3_1/OpenAPI.dhall


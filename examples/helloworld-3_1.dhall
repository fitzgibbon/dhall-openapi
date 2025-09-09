let Encoding     = ../types/Encoding.dhall
let Example      = ../types/Example.dhall Text
let Responses    = ../types/v3_1/Responses.dhall Text
let ResponseRef  = ../types/v3_1/ResponseRef.dhall Text
let Media        = ../types/v3_1/MediaType.dhall Text
let SchemaRef    = ../types/v3_1/SchemaRef.dhall
in
{ openapi      = "3.1.0"
, info         = { title = "Example API", version = "3.1.0" } 
, servers      = [{ url = "http://localhost/" }]
, jsonSchemaDialect = "https://json-schema.org/draft/2020-12/schema"
, paths        = [{
    mapKey = "/hello"
  , mapValue = {
      get = {
        description  = "Everything starts with hello world!"
        , responses  = Responses.HttpStatus {
            mapKey   = "200"
          , mapValue = ResponseRef.Resp {
              description = "A message."
            , headers = [] : List { mapKey : Text, mapValue : ../types/HeaderRef.dhall }
            , links   = [] : List { mapKey : Text, mapValue : ../types/LinkRef.dhall   }
            , content = [{
                mapKey = "application/json"
              , mapValue = Media.Single {
                schema = (SchemaRef.Schema (
                  let J = ../types/v3_1/JSON.dhall in J.object [
                    { mapKey = "type", mapValue = J.string "string" }
                  ]
                ))
                , encoding = None Encoding
                , example  = { summary       = "Example output"
                              , description   = "Hello World example"
                              , value         = "Hello, world!"
                              , externalValue = ""
                              }
              }
            }]
          }
        }
      }
    }
  }]
, components   = [{=}]
, security     = [{=}]
, webhooks     = [] : List { mapKey : Text, mapValue : ../types/v3_1/PathItem.dhall }
, tags         = [] : List ../types/Tag.dhall
, externalDocs = { url = "file://../README.md" }
}


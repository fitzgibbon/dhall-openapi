{ schemas       : List { mapKey : Text, mapValue : ./SchemaRef.dhall }
, responses     : List { mapKey : Text, mapValue : (./ResponseRef.dhall Text) }
, parameters    : List { mapKey : Text, mapValue : ../ParamRef.dhall }
, headers       : List { mapKey : Text, mapValue : ../HeaderRef.dhall }
, examples      : List { mapKey : Text, mapValue : ../ExampleRef.dhall Text }
, requestBodies : List { mapKey : Text, mapValue : ./ReqRef.dhall }
, links         : List { mapKey : Text, mapValue : ../LinkRef.dhall }
, callbacks     : List { mapKey : Text, mapValue : List ../CallbackRef.dhall }
, securitySchemes : List { mapKey : Text, mapValue : ../Security.dhall }
, pathItems     : List { mapKey : Text, mapValue : ./PathItem.dhall }
}


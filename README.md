# dhall-openapi

Dhall expressions for OpenAPI 3.0.x and 3.1.x

## Motivation

Dhall is an excellent tool. I often think of it as "programmable schema". 

Not being able to go from Dhall to XSD and/or to Java/Haskell/Python, I wondered if I could at least go to an interim format such as OpenAPI so
I can easily build a service and its domain objects in a less-verbose language that has a faster feedback loop that is _type-safe_. The result
is this repo.

### Known Issues

 * The Schema type doesn't fairly represent the JSON schema structure as referenced in the OpenAPI Specification. This is a work in progress

## OpenAPI 3.1 support

- New v3_1 types are provided under `types/v3_1/`.
- JSON Schema 2020-12 is supported as raw JSON via `types/v3_1/JSON.dhall` embedded in `types/v3_1/SchemaRef.dhall`.
- Top-level `jsonSchemaDialect` and `webhooks` are supported in `types/v3_1/OpenAPI.dhall`.
- `components.pathItems` is supported in `types/v3_1/Component.dhall`.
- `Reference` allows `summary` and `description` siblings in `types/v3_1/Reference.dhall`.
- `License` includes an `identifier` field in `types/v3_1/License.dhall`.

### Defaults and examples

- See `defaults-3_1.dhall` for a minimal 3.1 scaffold.
- Example: `examples/helloworld-3_1.dhall`.

### Migration notes from 3.0.x

- `nullable` is removed; use JSON Schema unions, e.g., `type: ["string","null"]`.
- You can embed any 2020-12 JSON Schema using `types/v3_1/JSON.dhall`.
- Keep your 3.0 usage unchanged; 3.1 lives in a separate namespace.

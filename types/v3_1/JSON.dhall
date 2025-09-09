let JSON : Type =
      < array  : List JSON
      | bool   : Bool
      | null   : {}
      | number : Double
      | object : List { mapKey : Text, mapValue : JSON }
      | string : Text
      >
in JSON


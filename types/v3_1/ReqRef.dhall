let R = { description : Text, content : List { mapKey : Text, mapValue: List ./MediaType.dhall Text }, required : Bool }
in
< Req : R | Ref : ./Reference.dhall >


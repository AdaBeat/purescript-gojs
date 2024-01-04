module GoJS.Key where

import Unsafe.Coerce (unsafeCoerce)

data Key
  = StringKey String
  | NumberKey Number
  | UndefinedKey

foreign import keyType :: forall k. k -> String

toKey :: forall k. k -> Key
toKey k = case keyType k of
  "string" -> StringKey (unsafeCoerce k)
  "number" -> NumberKey (unsafeCoerce k)
  _ -> UndefinedKey
module GoJS.GraphObject.TextBlock.Methods where

import Prelude

import Effect (Effect)
import GoJS.Diagram.Types (TextBlock_)
import GoJS.Unsafe (callStatic0, callStatic1)

getBaseline_ :: Effect (TextBlock_ -> Number -> Number)
getBaseline_ = callStatic0 "TextBlock" "getBaseline"

getUnderline_ :: Effect (TextBlock_ -> Number -> Number)
getUnderline_ = callStatic0 "TextBlock" "getUnderline"

setBaseline_ :: (TextBlock_ -> Number -> Number) -> Effect Unit
setBaseline_ = callStatic1 "TextBlock" "setBaseline"

setUnderline_ :: (TextBlock_ -> Number -> Number) -> Effect Unit
setUnderline_ = callStatic1 "TextBlock" "setUnderline"
module GoJS.Diagram.AnimationManager.Methods where

import Prelude

import Effect (Effect)
import GoJS.Diagram.Types (AnimationManager_)
import GoJS.Unsafe (callUnsafe1)

canStart_ :: String -> AnimationManager_ -> Effect Boolean
canStart_ = callUnsafe1 "canStart"

stopAnimation_ :: Boolean -> AnimationManager_ -> Effect Unit
stopAnimation_ = callUnsafe1 "stopAnimation"
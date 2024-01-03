module GoJS.Diagram.AnimationTrigger.Constructors where

import Effect (Effect)
import GoJS.Diagram.Types (AnimationTrigger_)
import GoJS.Unsafe (constructor1)

newAnimationTrigger :: String -> Effect AnimationTrigger_
newAnimationTrigger = constructor1 "AnimationTrigger"

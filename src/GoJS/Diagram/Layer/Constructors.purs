module GoJS.Diagram.Layer.Constructors where

import Effect (Effect)
import GoJS.Diagram (Layer_)
import GoJS.Unsafe (constructor0)

newLayer :: Effect Layer_
newLayer = constructor0 "Layer"

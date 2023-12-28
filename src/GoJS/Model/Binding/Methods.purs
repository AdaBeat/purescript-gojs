module GoJS.Model.Binding.Methods where

import Effect (Effect)
import GoJS.Model.Types (Binding_)
import GoJS.Unsafe (callUnsafe0, callUnsafe1)

ofModel_ :: Binding_ -> Effect Binding_
ofModel_ = callUnsafe0 "ofModel"

ofObject_ :: Binding_ -> Effect Binding_
ofObject_ = callUnsafe0 "ofObject"

makeTwoWay_ :: forall from to. (from -> to) -> Binding_ -> Effect Binding_
makeTwoWay_ = callUnsafe1 "makeTwoWay"
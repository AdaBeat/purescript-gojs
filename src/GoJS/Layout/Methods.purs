module GoJS.Diagram.Layout.Methods where

import Prelude

import Effect (Effect)
import GoJS.Collection (Set_)
import GoJS.Diagram.Types (class IsDiagram, class IsPart)
import GoJS.Geometry.Types (Point_, Rect_)
import GoJS.Layout.Types (class IsLayout, class LayoutNetwork)
import GoJS.Unsafe (callUnsafe0, callUnsafe1, callUnsafe2)

collectParts_ :: forall d l @p. IsLayout l => IsDiagram d => IsPart p => d -> l -> Effect (Set_ p)
collectParts_ = callUnsafe1 "collectParts"

commitLayout_ :: forall l. IsLayout l => l -> Effect Unit
commitLayout_ = callUnsafe0 "commitLayout"

copy_ :: forall @l. IsLayout l => l -> Effect l
copy_ = callUnsafe0 "copy"

-- GridLayout does not use networks, so does not have an instance of LayoutNetwork
-- and therefore this method should not be called for it.
createNetwork_ :: forall @l n _e _v. LayoutNetwork l n _e _v => l -> Effect n
createNetwork_ = callUnsafe0 "createNetwork"

doLayout_ :: forall l. IsLayout l => l -> Effect Unit
doLayout_ = callUnsafe0 "doLayout"

getLayoutBounds_ :: forall p l. IsLayout l => IsPart p => p -> Rect_ -> l -> Effect Rect_
getLayoutBounds_ = callUnsafe2 "getLayoutBounds"

initialOrigin_ :: forall l. IsLayout l => Point_ -> l -> Effect Point_
initialOrigin_ = callUnsafe1 "initialOrigin"

invalidateLayout_ :: forall l. IsLayout l => l -> Effect Unit
invalidateLayout_ = callUnsafe0 "invalidateLayout"

-- GridLayout does not use networks, so does not have an instance of LayoutNetwork
-- and therefore this method should not be called for it.
makeNetwork_ :: forall l n _e _v. LayoutNetwork l n _e _v => l -> Effect n
makeNetwork_ = callUnsafe0 "makeNetwork"

updateParts_ :: forall l. IsLayout l => l -> Effect Unit
updateParts_ = callUnsafe0 "updateParts"

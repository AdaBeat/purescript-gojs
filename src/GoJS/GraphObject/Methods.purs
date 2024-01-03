module GoJS.GraphObject.Methods where

import Data.Unit (Unit)
import Effect (Effect)
import GoJS.Diagram.Types (AnimationTrigger_)
import GoJS.GraphObject.Types (class IsGraphObject, class IsPanel)
import GoJS.Geometry.Types (Point_, Rect_)
import GoJS.Model.Types (Binding_)
import GoJS.Unsafe (callUnsafe0, callUnsafe1, callUnsafe2)

bind_ :: forall g. IsGraphObject g => Binding_ -> g -> Effect Unit
bind_ = callUnsafe1 "bind"

copy_ :: forall @g. IsGraphObject g => g -> Effect g
copy_ = callUnsafe0 "copy"

findBindingPanel_ :: forall g @p. IsGraphObject g => IsPanel p => g -> Effect p
findBindingPanel_ = callUnsafe0 "findBindingPanel"

getDocumentAngle_ :: forall g. IsGraphObject g => g -> Effect Number
getDocumentAngle_ = callUnsafe0 "getDocumentAngle"

getDocumentBounds_ :: forall g. IsGraphObject g => Rect_ -> g -> Effect Rect_
getDocumentBounds_ = callUnsafe1 "getDocumentBounds"

getDocumentPoint_ :: forall g. IsGraphObject g => Point_ -> g -> Effect Point_
getDocumentPoint_ = callUnsafe1 "getDocumentPoint"

getDocumentScale_ :: forall g. IsGraphObject g => g -> Effect Number
getDocumentScale_ = callUnsafe0 "getDocumentScale"

getLocalPoint_ :: forall g. IsGraphObject g => Point_ -> Point_ -> g -> Effect Point_
getLocalPoint_ = callUnsafe2 "getLocalPoint"

isContainedBy_ :: forall g1 g2. IsGraphObject g1 => IsGraphObject g2 => g1 -> g2 -> Effect Boolean
isContainedBy_ = callUnsafe1 "isContainedBy"

isEnabledObject_ :: forall g. IsGraphObject g => g -> Effect Boolean
isEnabledObject_ = callUnsafe0 "isEnabledObject"

isVisibleObject_ :: forall g. IsGraphObject g => g -> Effect Boolean
isVisibleObject_ = callUnsafe0 "isVisibleObject"

trigger_ :: forall g. IsGraphObject g => AnimationTrigger_ -> g -> Effect g
trigger_ = callUnsafe1 "trigger"

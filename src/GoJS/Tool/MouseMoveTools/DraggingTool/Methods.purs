module GoJS.Tool.MouseMoveTools.DraggingTool.Methods where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (toMaybe)
import Effect (Effect)
import GoJS.Collection (List_, Map_)
import GoJS.Diagram (class IsPart)
import GoJS.Diagram.Types (DraggingInfo_, DraggingOptions_)
import GoJS.Geometry.Types (Point_)
import GoJS.Tool.Types (DraggingTool_)
import GoJS.Unsafe (callUnsafe0, callUnsafe1, callUnsafe3)

mayCopy_ :: DraggingTool_ -> Effect Boolean
mayCopy_ = callUnsafe0 "mayCopy"

mayMove_ :: DraggingTool_ -> Effect Boolean
mayMove_ = callUnsafe0 "mayMove"

moveParts_ :: forall p. IsPart p => Map_ p DraggingInfo_ -> Point_ -> Boolean -> DraggingTool_ -> Effect Unit
moveParts_ = callUnsafe3 "moveParts"

computeEffectiveCollection_ :: forall p. IsPart p => List_ DraggingTool_ -> DraggingOptions_ -> Effect (Map_ p DraggingInfo_)
computeEffectiveCollection_ = callUnsafe1 "computeEffectiveCollection"

computeMove_ :: DraggingTool_ -> Effect Point_
computeMove_ = callUnsafe0 "computeMove"

doDragOver_ :: DraggingTool_ -> Effect Unit
doDragOver_ = callUnsafe0 "doDragOver"

doDropOnto_ :: DraggingTool_ -> Effect Unit
doDropOnto_ = callUnsafe0 "doDropOnto"

findDraggablePart_ :: forall @p. IsPart p => DraggingTool_ -> Effect (Maybe p)
findDraggablePart_ x = toMaybe <$> callUnsafe0 "findDraggablePart" x
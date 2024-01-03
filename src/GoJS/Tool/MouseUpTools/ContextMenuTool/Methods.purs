module GoJS.Tool.MouseUpTools.ContextMenuTool.Methods where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (toMaybe)
import Effect (Effect)
import GoJS.Geometry.Types (Point_)
import GoJS.GraphObject.Types (class IsGraphObject, Adornment_)
import GoJS.Tool.Types (ContextMenuTool_)
import GoJS.Unsafe (callUnsafe0, callUnsafe1, callUnsafe2)

-- Works on either GraphObject or Diagram.
findObjectWithContextMenu_ :: forall g. g -> ContextMenuTool_ -> Effect (Maybe g)
findObjectWithContextMenu_ g t = toMaybe <$> callUnsafe1 "findObjectWithContextMenu" g t

hideContextMenu_ :: ContextMenuTool_ -> Effect Unit
hideContextMenu_ = callUnsafe0 "hideContextMenu"

hideDefaultContextMenu_ :: ContextMenuTool_ -> Effect Unit
hideDefaultContextMenu_ = callUnsafe0 "hideDefaultContextMenu"

positionContextMenu_ :: forall g. IsGraphObject g => Adornment_ -> g -> ContextMenuTool_ -> Effect Unit
positionContextMenu_ = callUnsafe2 "positionContextMenu"

showContextMenu_ :: forall g. IsGraphObject g => Adornment_ -> g -> ContextMenuTool_ -> Effect Unit
showContextMenu_ = callUnsafe2 "showContextMenu"

showDefaultContextMenu_ :: forall g. IsGraphObject g => g -> Point_ -> ContextMenuTool_ -> Effect Unit
showDefaultContextMenu_ = callUnsafe2 "showDefaultContextMenu"
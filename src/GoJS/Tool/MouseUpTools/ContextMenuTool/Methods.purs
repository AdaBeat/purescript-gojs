module GoJS.Tool.MouseUpTools.ContextMenuTool.Methods where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (toMaybe)
import Data.Variant (Variant, case_, on)
import Effect (Effect)
import GoJS.Diagram (class IsDiagram)
import GoJS.GraphObject.Types (class IsGraphObject, Adornment_)
import GoJS.Tool.Types (ContextMenuTool_, HTMLInfo_)
import GoJS.Unsafe (callUnsafe0, callUnsafe1, callUnsafe2)
import Type.Prelude (Proxy(..))

-- TODO: Should return the same Variant.
findObjectWithContextMenu_ :: forall g d. IsGraphObject g => IsDiagram d => Variant (graphObject :: g, diagram :: d) -> ContextMenuTool_ -> Effect (Maybe g)
findObjectWithContextMenu_ obj t = obj #
  ( case_
      # on (Proxy @"graphObject") (\graphObject -> toMaybe <$> callUnsafe1 "findObjectWithContextMenu" graphObject t)
      # on (Proxy @"diagram") (\diagram -> toMaybe <$> callUnsafe1 "findObjectWithContextMenu" diagram t)
  )

hideContextMenu_ :: ContextMenuTool_ -> Effect Unit
hideContextMenu_ = callUnsafe0 "hideContextMenu"

hideDefaultContextMenu_ :: ContextMenuTool_ -> Effect Unit
hideDefaultContextMenu_ = callUnsafe0 "hideDefaultContextMenu"

positionContextMenu_ :: forall g. IsGraphObject g => Adornment_ -> g -> ContextMenuTool_ -> Effect Unit
positionContextMenu_ = callUnsafe2 "positionContextMenu"

showContextMenu_ :: forall g. IsGraphObject g => Variant (adornment :: Adornment_, htmlinfo :: HTMLInfo_) -> g -> ContextMenuTool_ -> Effect Unit
showContextMenu_ contextmenu obj t = contextmenu #
  ( case_
      # on (Proxy @"adornment") (\adornment -> callUnsafe2 "showContextMenu" adornment obj t)
      # on (Proxy @"htmlinfo") (\htmlinfo -> callUnsafe2 "showContextMenu" htmlinfo obj t)
  )

showDefaultContextMenu_ :: ContextMenuTool_ -> Effect Unit
showDefaultContextMenu_ = callUnsafe0 "showDefaultContextMenu"
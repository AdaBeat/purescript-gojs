module GoJS.Tool.MouseUpTools.ContextMenuTool.Properties where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (toMaybe)
import GoJS.Geometry.Types (Point_)
import GoJS.GraphObject.Types (class IsGraphObject, Adornment_)
import GoJS.Tool (ContextMenuTool_)
import GoJS.Unsafe (getUnsafe)

-- TODO: Adornment | HTMLInfo
_currentContextMenu :: ContextMenuTool_ -> Maybe Adornment_
_currentContextMenu = toMaybe <<< getUnsafe [ "currentContextMenu" ]

_currentObject :: forall @g. IsGraphObject g => ContextMenuTool_ -> Maybe g
_currentObject = toMaybe <<< getUnsafe [ "currentObject" ]

-- TODO: Adornment | HTMLInfo
_defaultTouchContextMenu :: ContextMenuTool_ -> Maybe Adornment_
_defaultTouchContextMenu = toMaybe <<< getUnsafe [ "defaultTouchContextMenu" ]

-- Read-only
_mouseDownPoint :: ContextMenuTool_ -> Point_
_mouseDownPoint = getUnsafe [ "mouseDownPoint" ]
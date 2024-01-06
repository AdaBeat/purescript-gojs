module GoJS.Layout.LayoutEdge.LayeredDigraphEdge.Properties where

import GoJS.Geometry.Types (Point_)
import GoJS.Layout (LayeredDigraphEdge_)
import GoJS.Unsafe (getUnsafe)

_relativePoint :: LayeredDigraphEdge_ -> Point_
_relativePoint = getUnsafe ["relativePoint"]

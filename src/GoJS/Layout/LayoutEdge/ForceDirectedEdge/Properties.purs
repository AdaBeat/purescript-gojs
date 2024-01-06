module GoJS.Layout.LayoutEdge.ForceDirectedEdge.Properties where

import GoJS.Layout (ForceDirectedEdge_)
import GoJS.Unsafe (getUnsafe)

_length :: ForceDirectedEdge_ -> Number
_length = getUnsafe ["length"]

_stiffness :: ForceDirectedEdge_ -> Number
_stiffness = getUnsafe ["stiffness"]
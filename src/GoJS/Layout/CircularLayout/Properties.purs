module GoJS.Layout.CircularLayout.Properties where

import GoJS.EnumValue (EnumValue_)
import GoJS.Geometry.Types (Point_)
import GoJS.Layout.Types (CircularLayout_)
import GoJS.Unsafe (getUnsafe)

_actualCenter :: CircularLayout_ -> Point_
_actualCenter = getUnsafe [ "actualCenter" ]

_actualSpacing :: CircularLayout_ -> Number
_actualSpacing = getUnsafe [ "actualSpacing" ]

_actualXRadius :: CircularLayout_ -> Number
_actualXRadius = getUnsafe [ "actualXRadius" ]

_actualYRadius :: CircularLayout_ -> Number
_actualYRadius = getUnsafe [ "actualYRadius" ]

_aspectRatio :: CircularLayout_ -> Number
_aspectRatio = getUnsafe [ "aspectRatio" ]

_directionCircular :: CircularLayout_ -> EnumValue_
_directionCircular = getUnsafe [ "directionCircular" ]

_nodeDiameterFormula :: CircularLayout_ -> EnumValue_
_nodeDiameterFormula = getUnsafe [ "nodeDiameterFormula" ]

_radius :: CircularLayout_ -> Number
_radius = getUnsafe [ "radius" ]

_sorting :: CircularLayout_ -> EnumValue_
_sorting = getUnsafe [ "sorting" ]

_spacing :: CircularLayout_ -> Number
_spacing = getUnsafe [ "spacing" ]

_startAngle :: CircularLayout_ -> Number
_startAngle = getUnsafe [ "startAngle" ]

_sweepAngle :: CircularLayout_ -> Number
_sweepAngle = getUnsafe [ "sweepAngle" ]
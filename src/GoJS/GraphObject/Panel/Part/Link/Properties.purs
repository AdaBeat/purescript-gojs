module GoJS.GraphObject.Panel.Part.Link.Properties where


import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (toMaybe)
import GoJS.Collection (Iterator_)
import GoJS.Diagram.Types (class IsGraphObject, class IsNode, Link_, Shape_, SomeNode_)
import GoJS.EnumValue (EnumValue_)
import GoJS.Geometry.Types (Geometry_, Point_, Rect_)
import GoJS.Unsafe (getUnsafe)

_adjusting :: Link_ -> EnumValue_
_adjusting = getUnsafe [ "adjusting" ]

_corner :: Link_ -> Number
_corner = getUnsafe [ "corner" ]

_curve :: Link_ -> EnumValue_
_curve = getUnsafe [ "curve" ]

_curviness :: Link_ -> Number
_curviness = getUnsafe [ "curviness" ]

_fromNode :: forall @n. IsNode n => Link_ -> Maybe n
_fromNode = toMaybe <<< getUnsafe [ "fromNode" ]

_fromPort :: forall @g. IsGraphObject g => Link_ -> Maybe g
_fromPort = toMaybe <<< getUnsafe [ "fromPort" ]

_fromPortId :: Link_ -> String
_fromPortId = getUnsafe [ "fromPortId" ]

_geometry :: Link_ -> Geometry_
_geometry = getUnsafe [ "geometry" ]

_isLabeledLink :: Link_ -> Boolean
_isLabeledLink = getUnsafe [ "isLabeledLink" ]

_isOrthogonal :: Link_ -> Boolean
_isOrthogonal = getUnsafe [ "isOrthogonal" ]

_isTreeLink :: Link_ -> Boolean
_isTreeLink = getUnsafe [ "isTreeLink" ]

_labelNodes :: Link_ -> Iterator_ SomeNode_
_labelNodes = getUnsafe [ "labelNodes" ]

_midAngle :: Link_ -> Number
_midAngle = getUnsafe [ "midAngle" ]

_midPoint :: Link_ -> Point_
_midPoint = getUnsafe [ "midPoint" ]

_path :: Link_ -> Shape_
_path = getUnsafe [ "path" ]

_pointsCount :: Link_ -> Number
_pointsCount = getUnsafe [ "pointsCount" ]

_relinkableFrom :: Link_ -> Boolean
_relinkableFrom = getUnsafe [ "relinkableFrom" ]

_relinkableTo :: Link_ -> Boolean
_relinkableTo = getUnsafe [ "relinkableTo" ]

_resegmentable :: Link_ -> Boolean
_resegmentable = getUnsafe [ "resegmentable" ]

_routeBounds :: Link_ -> Rect_
_routeBounds = getUnsafe [ "routeBounds" ]

_routing :: Link_ -> EnumValue_
_routing = getUnsafe [ "routing" ]

_smoothness :: Link_ -> Number
_smoothness = getUnsafe [ "smoothness" ]

_toEndSegmentLength :: Link_ -> Number
_toEndSegmentLength = getUnsafe [ "toEndSegmentLength" ]

_toNode :: forall @n. IsNode n => Link_ -> Maybe n
_toNode = toMaybe <<< getUnsafe [ "toNode" ]

_toPort :: forall @g. IsGraphObject g => Link_ -> Maybe g
_toPort = toMaybe <<< getUnsafe [ "toPort" ]

_toPortId :: Link_ -> String
_toPortId = getUnsafe [ "toPortId" ]

_toShortLength :: Link_ -> Number
_toShortLength = getUnsafe [ "toShortLength" ]
-- fromEndSegmentLength
-- fromPortChanged
-- toPortChanged
-- , points :: List_ Point_
-- key

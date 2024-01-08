module GoJS.GraphObject.Properties where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (toMaybe)
import GoJS.Diagram.Types (Diagram_, Layer_)
import GoJS.EnumValue (EnumValue_)
import GoJS.Geometry.Types (Margin_, Point_, Rect_, Size_, Spot_)
import GoJS.GraphObject.Types (class IsGraphObject, class IsPart, Adornment_, ContextMenu_, Panel_, toContextMenu)
import GoJS.Unsafe (getUnsafe)

-- Read-only
_actualBounds :: forall g. IsGraphObject g => g -> Rect_
_actualBounds = getUnsafe [ "actualBounds" ]

_alignment :: forall g. IsGraphObject g => g -> Spot_
_alignment = getUnsafe [ "alignment" ]

_alignmentFocus :: forall g. IsGraphObject g => g -> Spot_
_alignmentFocus = getUnsafe [ "alignmentFocus" ]

_angle :: forall g. IsGraphObject g => g -> Number
_angle = getUnsafe [ "angle" ]

_background :: forall g. IsGraphObject g => g -> String -- TODO: Could be Brush
_background = getUnsafe [ "background" ]

_column :: forall g. IsGraphObject g => g -> Number
_column = getUnsafe [ "column" ]

_columnSpan :: forall g. IsGraphObject g => g -> Number
_columnSpan = getUnsafe [ "columnSpan" ]

_contextMenu :: forall g. IsGraphObject g => g -> Maybe ContextMenu_
_contextMenu = toContextMenu <<< getUnsafe [ "contextMenu" ]

_cursor :: forall g. IsGraphObject g => g -> String
_cursor = getUnsafe [ "cursor" ]

_desiredSize :: forall g. IsGraphObject g => g -> Size_
_desiredSize = getUnsafe [ "desiredSize" ]

-- Read-only
-- TODO: Can be null, but in the vast majority of cases is not.
_diagram :: forall g. IsGraphObject g => g -> Diagram_
_diagram = getUnsafe [ "diagram" ]

_fromEndSegmentLength :: forall g. IsGraphObject g => g -> Number
_fromEndSegmentLength = getUnsafe [ "fromEndSegmentLength" ]

_fromLinkable :: forall g. IsGraphObject g => g -> Boolean
_fromLinkable = getUnsafe [ "fromLinkable" ]

_fromLinkableDuplicates :: forall g. IsGraphObject g => g -> Boolean
_fromLinkableDuplicates = getUnsafe [ "fromLinkableDuplicates" ]

_fromLinkableSelfNode :: forall g. IsGraphObject g => g -> Boolean
_fromLinkableSelfNode = getUnsafe [ "fromLinkableSelfNode" ]

_fromMaxLinks :: forall g. IsGraphObject g => g -> Number
_fromMaxLinks = getUnsafe [ "fromMaxLinks" ]

_fromShortLength :: forall g. IsGraphObject g => g -> Number
_fromShortLength = getUnsafe [ "fromShortLength" ]

_fromSpot :: forall g. IsGraphObject g => g -> Spot_
_fromSpot = getUnsafe [ "fromSpot" ]

_height :: forall g. IsGraphObject g => g -> Number
_height = getUnsafe [ "height" ]

_isActionable :: forall g. IsGraphObject g => g -> Boolean
_isActionable = getUnsafe [ "isActionable" ]

_isPanelMain :: forall g. IsGraphObject g => g -> Boolean
_isPanelMain = getUnsafe [ "isPanelMain" ]

-- Read-only
_layer :: forall g. IsGraphObject g => g -> Layer_
_layer = getUnsafe [ "layer" ]

_margin :: forall g. IsGraphObject g => g -> Margin_
_margin = getUnsafe [ "margin" ]

_maxSize :: forall g. IsGraphObject g => g -> Size_
_maxSize = getUnsafe [ "maxSize" ]

-- Read-only
_measuredBounds :: forall g. IsGraphObject g => g -> Rect_
_measuredBounds = getUnsafe [ "measuredBounds" ]

_minSize :: forall g. IsGraphObject g => g -> Size_
_minSize = getUnsafe [ "minSize" ]

_name :: forall g. IsGraphObject g => g -> String
_name = getUnsafe [ "name" ]

-- Read-only
_naturalBounds :: forall g. IsGraphObject g => g -> Rect_
_naturalBounds = getUnsafe [ "naturalBounds" ]

_opacity :: forall g. IsGraphObject g => g -> Number
_opacity = getUnsafe [ "opacity" ]

-- Read-only
_panel :: forall g. IsGraphObject g => g -> Maybe Panel_
_panel = toMaybe <<< getUnsafe [ "panel" ]

-- Read-only
_part :: forall g @p. IsGraphObject g => IsPart p => g -> Maybe p
_part = toMaybe <<< getUnsafe [ "part" ]

_pickable :: forall g. IsGraphObject g => g -> Boolean
_pickable = getUnsafe [ "pickable" ]

_portId :: forall g. IsGraphObject g => g -> Maybe String
_portId = toMaybe <<< getUnsafe [ "portId" ]

_position :: forall g. IsGraphObject g => g -> Point_
_position = getUnsafe [ "position" ]

_row :: forall g. IsGraphObject g => g -> Number
_row = getUnsafe [ "row" ]

_rowSpan :: forall g. IsGraphObject g => g -> Number
_rowSpan = getUnsafe [ "rowSpan" ]

_scale :: forall g. IsGraphObject g => g -> Number
_scale = getUnsafe [ "scale" ]

_segmentFraction :: forall g. IsGraphObject g => g -> Number
_segmentFraction = getUnsafe [ "segmentFraction" ]

_segmentIndex :: forall g. IsGraphObject g => g -> Number
_segmentIndex = getUnsafe [ "segmentIndex" ]

_segmentOffset :: forall g. IsGraphObject g => g -> Point_
_segmentOffset = getUnsafe [ "segmentOffset" ]

_segmentOrientation :: forall g. IsGraphObject g => g -> EnumValue_
_segmentOrientation = getUnsafe [ "segmentOrientation" ]

_shadowVisible :: forall g. IsGraphObject g => g -> Boolean
_shadowVisible = getUnsafe [ "shadowVisible" ]

_stretch :: forall g. IsGraphObject g => g -> EnumValue_
_stretch = getUnsafe [ "stretch" ]

_toEndSegmentLength :: forall g. IsGraphObject g => g -> Number
_toEndSegmentLength = getUnsafe [ "toEndSegmentLength" ]

_toLinkable :: forall g. IsGraphObject g => g -> Boolean
_toLinkable = getUnsafe [ "toLinkable" ]

_toLinkableDuplicates :: forall g. IsGraphObject g => g -> Boolean
_toLinkableDuplicates = getUnsafe [ "toLinkableDuplicates" ]

_toLinkableSelfNode :: forall g. IsGraphObject g => g -> Boolean
_toLinkableSelfNode = getUnsafe [ "toLinkableSelfNode" ]

_toMaxLinks :: forall g. IsGraphObject g => g -> Number
_toMaxLinks = getUnsafe [ "toMaxLinks" ]

_toShortLengh :: forall g. IsGraphObject g => g -> Number
_toShortLengh = getUnsafe [ "toShortLengh" ]

_toSpot :: forall g. IsGraphObject g => g -> Spot_
_toSpot = getUnsafe [ "toSpot" ]

-- TODO: Can be HTMLInfo.
_toolTip :: forall g. IsGraphObject g => g -> Maybe Adornment_
_toolTip = toMaybe <<< getUnsafe [ "toolTip" ]

_visible :: forall g. IsGraphObject g => g -> Boolean
_visible = getUnsafe [ "visible" ]

_width :: forall g. IsGraphObject g => g -> Number
_width = getUnsafe [ "width" ]

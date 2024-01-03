module GoJS.GraphObject.Panel.Part.Properties where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (toMaybe)
import GoJS.Collection (Iterator_)
import GoJS.GraphObject.Types (class IsGraphObject, class IsPart, Adornment_, Group_)
import GoJS.Geometry.Types (Point_, Size_, Spot_)
import GoJS.Unsafe (getUnsafe)

_adornments :: forall p. IsPart p => p -> Iterator_ Adornment_
_adornments = getUnsafe [ "adornments" ]

_category :: forall p. IsPart p => p -> String
_category = getUnsafe [ "category" ]

_containingGroup :: forall p. IsPart p => p -> Maybe Group_
_containingGroup = toMaybe <<< getUnsafe [ "containingGroup" ]

_copyable :: forall p. IsPart p => p -> Boolean
_copyable = getUnsafe [ "copyable" ]

_deletable :: forall p. IsPart p => p -> Boolean
_deletable = getUnsafe [ "deletable" ]

_groupable :: forall p. IsPart p => p -> Boolean
_groupable = getUnsafe [ "groupable" ]

_isAnimated :: forall p. IsPart p => p -> Boolean
_isAnimated = getUnsafe [ "isAnimated" ]

_isHighlighted :: forall p. IsPart p => p -> Boolean
_isHighlighted = getUnsafe [ "isHighlighted" ]

_isInDocumentBounds :: forall p. IsPart p => p -> Boolean
_isInDocumentBounds = getUnsafe [ "isInDocumentBounds" ]

_isLayoutPositioned :: forall p. IsPart p => p -> Boolean
_isLayoutPositioned = getUnsafe [ "isLayoutPositioned" ]

_isSelected :: forall p. IsPart p => p -> Boolean
_isSelected = getUnsafe [ "isSelected" ]

_isShadowed :: forall p. IsPart p => p -> Boolean
_isShadowed = getUnsafe [ "isShadowed" ]

_isTopLevel :: forall p. IsPart p => p -> Boolean
_isTopLevel = getUnsafe [ "isTopLevel" ]

_layerName :: forall p. IsPart p => p -> String
_layerName = getUnsafe [ "layerName" ]

_layoutConditions :: forall p. IsPart p => p -> Number
_layoutConditions = getUnsafe [ "layoutConditions" ]

_location :: forall p. IsPart p => p -> Point_
_location = getUnsafe [ "location" ]

_locationObject :: forall p @g. IsPart p => IsGraphObject g => p -> g
_locationObject = getUnsafe [ "locationObject" ]

_locationObjectName :: forall p. IsPart p => p -> String
_locationObjectName = getUnsafe [ "locationObjectName" ]

_locationSpot :: forall p. IsPart p => p -> Spot_
_locationSpot = getUnsafe [ "locationSpot" ]

_maxLocation :: forall p. IsPart p => p -> Spot_
_maxLocation = getUnsafe [ "maxLocation" ]

_minLocation :: forall p. IsPart p => p -> Spot_
_minLocation = getUnsafe [ "minLocation" ]

_movable :: forall p. IsPart p => p -> Boolean
_movable = getUnsafe [ "movable" ]

_reshapable :: forall p. IsPart p => p -> Boolean
_reshapable = getUnsafe [ "reshapable" ]

_resizable :: forall p. IsPart p => p -> Boolean
_resizable = getUnsafe [ "resizable" ]

_resizeAdornmentTemplate :: forall p. IsPart p => p -> Maybe Adornment_
_resizeAdornmentTemplate = toMaybe <<< getUnsafe [ "resizeAdornmentTemplate" ]

_resizeCellSize :: forall p. IsPart p => p -> Size_
_resizeCellSize = getUnsafe [ "resizeCellSize" ]

_resizeObject :: forall p @g. IsPart p => IsGraphObject g => p -> g
_resizeObject = getUnsafe [ "resizeObject" ]

_resizeObjectName :: forall p. IsPart p => p -> String
_resizeObjectName = getUnsafe [ "resizeObjectName" ]

_rotatable :: forall p. IsPart p => p -> Boolean
_rotatable = getUnsafe [ "rotatable" ]

_rotateAdornmentTemplate :: forall p. IsPart p => p -> Adornment_
_rotateAdornmentTemplate = getUnsafe [ "rotateAdornmentTemplate" ]

_rotateObject :: forall p @g. IsPart p => IsGraphObject g => p -> g
_rotateObject = getUnsafe [ "rotateObject" ]

_rotateObjectName :: forall p. IsPart p => p -> String
_rotateObjectName = getUnsafe [ "rotateObjectName" ]

_rotationSpot :: forall p. IsPart p => p -> Spot_
_rotationSpot = getUnsafe [ "rotationSpot" ]

_selectable :: forall p. IsPart p => p -> Boolean
_selectable = getUnsafe [ "selectable" ]

_selectionAdorned :: forall p. IsPart p => p -> Boolean
_selectionAdorned = getUnsafe [ "selectionAdorned" ]

_selectionAdornmentTemplate :: forall p. IsPart p => p -> Maybe Adornment_
_selectionAdornmentTemplate = toMaybe <<< getUnsafe [ "selectionAdornmentTemplate" ]

_selectionObject :: forall p @g. IsPart p => IsGraphObject g => p -> g
_selectionObject = getUnsafe [ "selectionObject" ]

_selectionObjectName :: forall p. IsPart p => p -> String
_selectionObjectName = getUnsafe [ "selectionObjectName" ]

_shadowBlur :: forall p. IsPart p => p -> Number
_shadowBlur = getUnsafe [ "shadowBlur" ]

_shadowColor :: forall p. IsPart p => p -> String
_shadowColor = getUnsafe [ "shadowColor" ]

_shadowOffset :: forall p. IsPart p => p -> Point_
_shadowOffset = getUnsafe [ "shadowOffset" ]

_text :: forall p. IsPart p => p -> String
_text = getUnsafe [ "text" ]

_textEditable :: forall p. IsPart p => p -> Boolean
_textEditable = getUnsafe [ "textEditable" ]

_zOrder :: forall p. IsPart p => p -> Int
_zOrder = getUnsafe [ "zOrder" ]

-- containingGroupChanged
-- selectionChanged
-- dragComputation
-- highlightedChange
-- key, layer, layerChanged
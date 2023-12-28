module GoJS.Diagram.Layer.Properties where

import GoJS.Collection (Iterator_)
import GoJS.Diagram (class IsDiagram, Layer_, SomePart_)
import GoJS.Unsafe (getUnsafe)

_allowCopy :: Layer_ -> Boolean
_allowCopy = getUnsafe [ "allowCopy" ]

_allowDelete :: Layer_ -> Boolean
_allowDelete = getUnsafe [ "allowDelete" ]

_allowGroup :: Layer_ -> Boolean
_allowGroup = getUnsafe [ "allowGroup" ]

_allowLink :: Layer_ -> Boolean
_allowLink = getUnsafe [ "allowLink" ]

_allowMove :: Layer_ -> Boolean
_allowMove = getUnsafe [ "allowMove" ]

_allowRelink :: Layer_ -> Boolean
_allowRelink = getUnsafe [ "allowRelink" ]

_allowReshape :: Layer_ -> Boolean
_allowReshape = getUnsafe [ "allowReshape" ]

_allowResize :: Layer_ -> Boolean
_allowResize = getUnsafe [ "allowResize" ]

_allowRotate :: Layer_ -> Boolean
_allowRotate = getUnsafe [ "allowRotate" ]

_allowSelect :: Layer_ -> Boolean
_allowSelect = getUnsafe [ "allowSelect" ]

_allowTextEdit :: Layer_ -> Boolean
_allowTextEdit = getUnsafe [ "allowTextEdit" ]

_allowUngroup :: Layer_ -> Boolean
_allowUngroup = getUnsafe [ "allowUngroup" ]

_diagram :: forall @d. IsDiagram d => Layer_ -> d
_diagram = getUnsafe [ "diagram" ]

_isInDocumentBounds :: Layer_ -> Boolean
_isInDocumentBounds = getUnsafe [ "isInDocumentBounds" ]

_isTemporary :: Layer_ -> Boolean
_isTemporary = getUnsafe [ "isTemporary" ]

_name :: Layer_ -> String
_name = getUnsafe [ "name" ]

_opacity :: Layer_ -> Number
_opacity = getUnsafe [ "opacity" ]

_parts :: Layer_ -> Iterator_ SomePart_
_parts = getUnsafe [ "parts" ]

_partsBackwards :: Layer_ -> Iterator_ SomePart_
_partsBackwards = getUnsafe [ "partsBackwards" ]

_pickable :: Layer_ -> Boolean
_pickable = getUnsafe [ "pickable" ]

_visible :: Layer_ -> Boolean
_visible = getUnsafe [ "visible" ]
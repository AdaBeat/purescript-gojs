module GoJS.GraphObject.Panel.Part.Node.Properties where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (toMaybe)
import GoJS.Collection (Iterator_)
import GoJS.Diagram.Types (class IsGraphObject, class IsNode, Link_, SomeGraphObject_)
import GoJS.EnumValue (EnumValue_)
import GoJS.Geometry.Types (Margin_)
import GoJS.Unsafe (getUnsafe)

_avoidable :: forall n. IsNode n => n -> Boolean
_avoidable = getUnsafe [ "avoidable" ]

_avoidableMargin :: forall n. IsNode n => n -> Margin_
_avoidableMargin = getUnsafe [ "avoidableMargin" ]

_isLinkLabel :: forall n. IsNode n => n -> Boolean
_isLinkLabel = getUnsafe [ "isLinkLabel" ]

_isTreeExpanded :: forall n. IsNode n => n -> Boolean
_isTreeExpanded = getUnsafe [ "isTreeExpanded" ]

_isTreeLeaf :: forall n. IsNode n => n -> Boolean
_isTreeLeaf = getUnsafe [ "isTreeLeaf" ]

_labeledLink :: forall n. IsNode n => n -> Maybe Link_
_labeledLink = toMaybe <<< getUnsafe [ "labeledLink" ]

_linksConnected :: forall n. IsNode n => n -> Iterator_ Link_
_linksConnected = getUnsafe [ "linksConnected" ]

_port :: forall n @g. IsNode n => IsGraphObject g => n -> Maybe g
_port = toMaybe <<< getUnsafe [ "port" ]

_portSpreading :: forall n. IsNode n => n -> EnumValue_
_portSpreading = getUnsafe [ "portSpreading" ]

_ports :: forall n. IsNode n => n -> Iterator_ SomeGraphObject_
_ports = getUnsafe [ "ports" ]

_wasTreeExpanded :: forall n. IsNode n => n -> Boolean
_wasTreeExpanded = getUnsafe [ "wasTreeExpanded" ]

-- treeExpandedChanged
-- linkConnected, linkDisconnected, linkValidation

module GoJS.GraphObject.Panel.Part.Node.Group.Methods where

import Prelude

import Effect (Effect)
import GoJS.Collection (Iterator_, Set_)
import GoJS.Diagram (Group_, SomeNode_)
import GoJS.Diagram.Types (class IsNode, class IsPart, Link_)
import GoJS.Unsafe (callUnsafe0, callUnsafe1)

addMembers_ :: forall p. IsPart p => Iterator_ p -> Group_ -> Effect Boolean
addMembers_ = callUnsafe1 "addMembers"

canAddMembers_ :: forall p. IsPart p => Iterator_ p -> Group_ -> Effect Boolean
canAddMembers_ = callUnsafe1 "canAddMembers"

canUngroup_ :: Group_ -> Effect Boolean
canUngroup_ = callUnsafe0 "canUngroup"

collapseSubGraph_ :: Group_ -> Effect Unit
collapseSubGraph_ = callUnsafe0 "collapseSubGraph"

expandSubGraph_ :: Group_ -> Effect Unit
expandSubGraph_ = callUnsafe0 "expandSubGraph"

findExternalLinksConnected_ :: Group_ -> Effect (Iterator_ Link_)
findExternalLinksConnected_ = callUnsafe0 "findExternalLinksConnected"

findExternalNodesConnected_ :: forall n. IsNode n => n -> Group_ -> Effect (Iterator_ SomeNode_)
findExternalNodesConnected_ = callUnsafe1 "findExternalNodesConnected"

findSubGraphParts_ :: forall p. IsPart p => Group_ -> Effect (Set_ p)
findSubGraphParts_ = callUnsafe0 "findSubGraphParts"

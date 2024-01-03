module GoJS.Tool.MouseDownTools.RelinkingTool.Methods where

import Prelude

import Effect (Effect)
import GoJS.GraphObject.Types (class IsGraphObject, class IsNode, class IsPart, Link_)
import GoJS.Tool.Types (LinkReshapingTool_)
import GoJS.Unsafe (callUnsafe4, callUnsafe1, callUnsafe2)

reconnectLink_ :: forall g n p. IsGraphObject g => IsNode n => IsPart p => Link_ -> n -> g -> Boolean -> LinkReshapingTool_ -> Effect Boolean
reconnectLink_ = callUnsafe4 "reconnectLink"

updateAdornments_ :: forall p. IsPart p => p -> LinkReshapingTool_ -> Effect Unit
updateAdornments_ = callUnsafe1 "updateAdornments"

doNoRelink_ :: forall g n. IsGraphObject g => IsNode n => Link_ -> n -> g -> Boolean -> LinkReshapingTool_ -> Effect Boolean
doNoRelink_ = callUnsafe4 "doNoRelink"

copyLinkProperties_ :: forall l. Link_ -> l -> LinkReshapingTool_ -> Effect Unit
copyLinkProperties_ = callUnsafe2 "copyLinkProperties"
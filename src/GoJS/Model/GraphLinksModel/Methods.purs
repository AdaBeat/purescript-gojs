module GoJS.Model.GraphLinksModel.Methods where

import Prelude

import Effect (Effect)
import GoJS.Model.Types (GraphLinksModel_)
import GoJS.Unsafe (callUnsafe1, callUnsafe2)

addLabelKeyForLinkData_ :: forall nodeData linkData k. Record linkData -> k -> GraphLinksModel_ linkData nodeData -> Effect Unit
addLabelKeyForLinkData_ = callUnsafe2 "addLabelKeyForLinkData"

addLinkData_ :: forall nodeData linkData. Record linkData -> GraphLinksModel_ linkData nodeData -> Effect Unit
addLinkData_ = callUnsafe1 "addLinkData"

containsLinkData_ :: forall nodeData linkData. Record linkData -> GraphLinksModel_ linkData nodeData -> Effect Boolean
containsLinkData_ = callUnsafe1 "containsLinkData"

copyLinkData_ :: forall nodeData linkData. Record linkData -> GraphLinksModel_ linkData nodeData -> Effect (Record linkData)
copyLinkData_ = callUnsafe1 "copyLinkData"

findLinkDataForKey_ :: forall nodeData linkData k. k -> GraphLinksModel_ linkData nodeData -> Effect (Record linkData)
findLinkDataForKey_ = callUnsafe1 "findLinkDataForKey"

getCategoryForLinkData_ :: forall nodeData linkData. Record linkData -> GraphLinksModel_ linkData nodeData -> Effect String
getCategoryForLinkData_ = callUnsafe1 "getCategoryForLinkData"

getFromKeyForLinkData_ :: forall nodeData linkData @k. Record linkData -> GraphLinksModel_ linkData nodeData -> Effect k
getFromKeyForLinkData_ = callUnsafe1 "getFromKeyForLinkData"

getFromPortIdForLinkData_ :: forall nodeData linkData. Record linkData -> GraphLinksModel_ linkData nodeData -> Effect String
getFromPortIdForLinkData_ = callUnsafe1 "getFromPortIdForLinkData"

getGroupKeyForNodeData_ :: forall nodeData linkData @k. Record linkData -> GraphLinksModel_ linkData nodeData -> Effect k
getGroupKeyForNodeData_ = callUnsafe1 "getGroupKeyForNodeData"

getKeyForLinkData_ :: forall nodeData linkData @k. Record linkData -> GraphLinksModel_ linkData nodeData -> Effect k
getKeyForLinkData_ = callUnsafe1 "getKeyForLinkData"

getToKeyForLinkData_ :: forall nodeData linkData @k. Record linkData -> GraphLinksModel_ linkData nodeData -> Effect k
getToKeyForLinkData_ = callUnsafe1 "getToKeyForLinkData"

getToPortIdForLinkData_ :: forall nodeData linkData. Record linkData -> GraphLinksModel_ linkData nodeData -> Effect String
getToPortIdForLinkData_ = callUnsafe1 "getToPortIdForLinkData"

isGroupForNodeData_ :: forall nodeData linkData. Record linkData -> GraphLinksModel_ linkData nodeData -> Effect Boolean
isGroupForNodeData_ = callUnsafe1 "isGroupForNodeData"

makeLinkDataKeyUnique_ :: forall nodeData linkData. Record linkData -> GraphLinksModel_ linkData nodeData -> Effect Unit
makeLinkDataKeyUnique_ = callUnsafe1 "makeLinkDataKeyUnique"

removeLabelKeyForLinkData_ :: forall nodeData linkData k. Record linkData -> k -> GraphLinksModel_ linkData nodeData -> Effect Unit
removeLabelKeyForLinkData_ = callUnsafe2 "removeLabelKeyForLinkData"

removeLinkData_ :: forall nodeData linkData. Record linkData -> GraphLinksModel_ linkData nodeData -> Effect Unit
removeLinkData_ = callUnsafe1 "removeLinkData"

setCategoryForLinkData_ :: forall nodeData linkData. Record linkData -> String -> GraphLinksModel_ linkData nodeData -> Effect Unit
setCategoryForLinkData_ = callUnsafe2 "setCategoryForLinkData"

setFromKeyForLinkData_ :: forall nodeData linkData k. Record linkData -> k -> GraphLinksModel_ linkData nodeData -> Effect Unit
setFromKeyForLinkData_ = callUnsafe2 "setFromKeyForLinkData"

setFromPortIdForLinkData_ :: forall nodeData linkData. Record linkData -> String -> GraphLinksModel_ linkData nodeData -> Effect Unit
setFromPortIdForLinkData_ = callUnsafe2 "setFromPortIdForLinkData"

setGroupKeyForNodeData_ :: forall nodeData linkData k. Record linkData -> k -> GraphLinksModel_ linkData nodeData -> Effect Unit
setGroupKeyForNodeData_ = callUnsafe2 "setGroupKeyForNodeData"

setKeyForLinkData_ :: forall nodeData linkData k. Record linkData -> k -> GraphLinksModel_ linkData nodeData -> Effect Unit
setKeyForLinkData_ = callUnsafe2 "setKeyForLinkData"

setToKeyForLinkData_ :: forall nodeData linkData k. Record linkData -> k -> GraphLinksModel_ linkData nodeData -> Effect Unit
setToKeyForLinkData_ = callUnsafe2 "setToKeyForLinkData"

setToPortIdForLinkData_ :: forall nodeData linkData. Record linkData -> String -> GraphLinksModel_ linkData nodeData -> Effect Unit
setToPortIdForLinkData_ = callUnsafe2 "setToPortIdForLinkData"

-- addLinkDataCollection :: forall nodeData linkData. ObjectData[] | Iterable<ObjectData>_ -> GraphLinksModel_ linkData nodeData -> Effect Unit
-- getLabelKeysForLinkData :: forall nodeData linkData. Record linkData -> GraphLinksModel_ linkData nodeData -> Effect Key[]_
-- mergeLinkDataArray :: forall nodeData linkData. ObjectData[]_ -> GraphLinksModel_ linkData nodeData -> Effect Unit
-- removeLinkDataCollection :: forall nodeData linkData. ObjectData[] | Iterable<ObjectData>_ -> GraphLinksModel_ linkData nodeData -> Effect Unit
-- setLabelKeysForLinkData :: forall nodeData linkData. Record linkData -> Key[]_ -> GraphLinksModel_ linkData nodeData -> Effect Unit

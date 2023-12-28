module GoJS.Model.TreeModel.Methods where

import Prelude

import Effect (Effect)
import GoJS.Model.Types (TreeModel_)
import GoJS.Unsafe (callUnsafe1, callUnsafe2)

getParentKeyForNodeData_ :: forall nodeData @k. Record nodeData -> TreeModel_ nodeData -> Effect k
getParentKeyForNodeData_ = callUnsafe1 "getParentKeyForNodeData"

getParentLinkCategoryForNodeData_ :: forall nodeData. Record nodeData -> TreeModel_ nodeData -> Effect String
getParentLinkCategoryForNodeData_ = callUnsafe1 "getParentLinkCategoryForNodeData"

setParentKeyForNodeData_ :: forall nodeData k. Record nodeData -> k -> TreeModel_ nodeData -> Effect Unit
setParentKeyForNodeData_ = callUnsafe2 "setParentKeyForNodeData"

setParentLinkCategoryForNodeData_ :: forall nodeData. Record nodeData -> String -> TreeModel_ nodeData -> Effect Unit
setParentLinkCategoryForNodeData_ = callUnsafe2 "setParentLinkCategoryForNodeData"

module GoJS.Model.Methods where

import Prelude

import Effect (Effect)
import GoJS.Model.Types (class IsModel)
import GoJS.Unsafe (callUnsafe0, callUnsafe1, callUnsafe2, callUnsafe3)

addNodeData_
  :: forall m nodeData
   . IsModel (m nodeData)
  => Record nodeData
  -> (m nodeData)
  -> Effect Unit
addNodeData_ = callUnsafe1 "addNodeData"

assignAllDataProperties_
  :: forall m nodeData
   . IsModel (m nodeData)
  => Record nodeData
  -> Record nodeData
  -> (m nodeData)
  -> Effect Unit
assignAllDataProperties_ = callUnsafe2 "assignAllDataProperties"

clear_
  :: forall m nodeData
   . IsModel (m nodeData)
  => (m nodeData)
  -> Effect Unit
clear_ = callUnsafe0 "clear"

containsNodeData_
  :: forall m nodeData
   . IsModel (m nodeData)
  => Record nodeData
  -> (m nodeData)
  -> Effect Boolean
containsNodeData_ = callUnsafe1 "containsNodeData"

copy_
  :: forall m nodeData
   . IsModel (m nodeData)
  => (m nodeData)
  -> Effect (m nodeData)
copy_ = callUnsafe0 "copy"

copyNodeData_
  :: forall m nodeData
   . IsModel (m nodeData)
  => Record nodeData
  -> (m nodeData)
  -> Effect (Record nodeData)
copyNodeData_ = callUnsafe1 "copyNodeData"

findNodeDataForKey_ :: forall m nodeData k. k -> m -> Effect (Record nodeData)
findNodeDataForKey_ = callUnsafe1 "findNodeDataForKey"

getCategoryForNodeData_
  :: forall m nodeData
   . IsModel (m nodeData)
  => Record nodeData
  -> (m nodeData)
  -> Effect String
getCategoryForNodeData_ = callUnsafe1 "getCategoryForNodeData"

getKeyForNodeData_ :: forall m nodeData @k. Record nodeData -> m -> Effect k
getKeyForNodeData_ = callUnsafe1 "getKeyForNodeData"

makeNodeDataKeyUnique_
  :: forall m nodeData
   . IsModel (m nodeData)
  => Record nodeData
  -> (m nodeData)
  -> Effect Unit
makeNodeDataKeyUnique_ = callUnsafe1 "makeNodeDataKeyUnique"

removeNodeData_
  :: forall m nodeData
   . IsModel (m nodeData)
  => Record nodeData
  -> (m nodeData)
  -> Effect Unit
removeNodeData_ = callUnsafe1 "removeNodeData"

rollbackTransaction_
  :: forall m nodeData
   . IsModel (m nodeData)
  => (m nodeData)
  -> Effect Boolean
rollbackTransaction_ = callUnsafe0 "rollbackTransaction"

setCategoryForNodeData_
  :: forall m nodeData
   . IsModel (m nodeData)
  => Record nodeData
  -> String
  -> (m nodeData)
  -> Effect Unit
setCategoryForNodeData_ = callUnsafe2 "setCategoryForNodeData"

setDataProperty_ :: forall m nodeData prop. IsModel m => Record nodeData -> String -> prop -> m -> Effect Unit
setDataProperty_ = callUnsafe3 "setDataProperty"

setKeyForNodeData_ :: forall m nodeData k. IsModel m => Record nodeData -> k -> m -> Effect Unit
setKeyForNodeData_ = callUnsafe2 "setKeyForNodeData"

updateTargetBindings_
  :: forall m nodeData
   . IsModel (m nodeData)
  => Record nodeData
  -> String
  -> (m nodeData)
  -> Effect Unit
updateTargetBindings_ = callUnsafe2 "updateTargetBindings"

-- addChangedListener :: forall m nodeData. IsModel m => ChangedEvent) => void_ -> m -> Effect m
-- addArrayItem :: forall m nodeData. any[]_ -> any_ -> m -> Effect Unit
-- cloneDeep<T> :: forall m. T_ -> m -> Effect T_
-- cloneProtected :: forall m. m -> m -> Effect Unit
-- commit :: forall m. Model) => void_ -> String -> m -> Effect Unit
-- commitTransaction :: forall m. String -> m -> Effect Boolean
-- addNodeDataCollection :: forall m. ObjectData[] | Iterable<ObjectData>_ -> m -> Effect Unit
-- applyIncrementalJson :: forall m. string | Record nodeData -> m -> Effect Unit
-- fromJson :: forall m. string | Record nodeData -> m -> m -> Effect m
-- raiseChangedEvent :: forall m. EnumValue_ -> Record nodeData -> any) => any)_ -> Record nodeData -> any_ -> any_ -> any_ -> any_ -> m -> Effect Unit
-- raiseDataChanged :: forall m. Record nodeData -> Record nodeData -> any) => any)_ -> any_ -> any_ -> any_ -> any_ -> m -> Effect Unit
-- removeArrayItem :: forall m. any[]_ -> Number -> m -> Effect Unit
-- removeChangedListener :: forall m. ChangedEvent) => void_ -> m -> Effect Unit
-- removeNodeDataCollection :: forall m. ObjectData[] | Iterable<ObjectData>_ -> m -> Effect Unit
-- set :: forall m. Record nodeData -> String -> any_ -> m -> Effect Unit
-- toIncrementalData :: forall m. ChangedEvent_ -> m -> Effect IncrementalData_
-- toIncrementalJson :: forall m. ChangedEvent_ -> String -> m -> Effect String
-- toJson :: forall m. String -> m -> Effect String
-- startTransaction :: forall m. String -> m -> Effect Boolean
-- insertArrayItem :: forall m. any[]_ -> Number -> any_ -> m -> Effect Unit
-- mergeNodeDataArray :: forall m. ObjectData[]_ -> m -> Effect Unit

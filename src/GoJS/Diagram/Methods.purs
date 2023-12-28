module GoJS.Diagram.Methods where

import Prelude

import Data.Foldable (class Foldable)
import Data.Function.Uncurried (Fn1)
import Data.Maybe (Maybe)
import Data.Nullable (toMaybe)
import Data.Symbol (reflectSymbol)
import Effect (Effect)
import GoJS.Class (class ClassName)
import GoJS.Collection (Iterator_)
import GoJS.Diagram.Types (class IsDiagram, class IsNode, class IsPart, DiagramEvent_, Group_, Layer_, Link_, SomeNode_)
import GoJS.EnumValue (EnumValue_)
import GoJS.Geometry.Types (Point_, Rect_, Spot_)
import GoJS.Unsafe (callUnsafe0, callUnsafe1, callUnsafe2, callUnsafe3, constructor1)
import Type.Prelude (Proxy(..))

foreign import addNodeTemplate_ :: forall d n. String -> n -> d -> Effect Unit
foreign import addLinkTemplate_ :: forall d l. String -> l -> d -> Effect Unit
foreign import addGroupTemplate_ :: forall d g. String -> g -> d -> Effect Unit

newDiagram :: forall (@s :: Symbol) (d :: Type). ClassName d s => IsDiagram d => String -> Effect d
newDiagram = constructor1 (reflectSymbol (Proxy @s))

add_ :: forall d p. IsDiagram d => IsPart p => p -> d -> Effect Unit
add_ = callUnsafe1 "add"

addDiagramListener_ :: forall d s. IsDiagram d => String -> (Fn1 (DiagramEvent_ s) Unit) -> d -> Effect d
addDiagramListener_ name listener d = callUnsafe2 "addDiagramListener" name listener d

addLayer_ :: forall d. IsDiagram d => Layer_ -> d -> Effect d
addLayer_ = callUnsafe1 "addLayer"

addLayerAfter_ :: forall d. IsDiagram d => Layer_ -> Layer_ -> d -> Effect d
addLayerAfter_ = callUnsafe2 "addLayerAfter"

addLayerBefore_ :: forall d. IsDiagram d => Layer_ -> Layer_ -> d -> Effect d
addLayerBefore_ = callUnsafe2 "addLayerBefore"

alignDocument_ :: forall d. IsDiagram d => Spot_ -> Spot_ -> d -> Effect Unit
alignDocument_ = callUnsafe2 "alignDocument"

attach_ :: forall r d. IsDiagram d => Record r -> d -> Effect d
attach_ = callUnsafe1 "attach"

centerRect_ :: forall d. IsDiagram d => Rect_ -> d -> Effect Unit
centerRect_ = callUnsafe1 "centerRect"

clear_ :: forall d. IsDiagram d => IsDiagram d => d -> Effect Unit
clear_ = callUnsafe0 "clear"

clearHighlighteds_ :: forall d. IsDiagram d => IsDiagram d => d -> Effect Unit
clearHighlighteds_ = callUnsafe0 "clearHighlighteds"

clearSelection_ :: forall d. IsDiagram d => Boolean -> d -> Effect Unit
clearSelection_ = callUnsafe1 "clearSelection"

commitTransaction_ :: forall d. IsDiagram d => String -> d -> Effect Boolean
commitTransaction_ = callUnsafe1 "commitTransaction"

computeBounds_ :: forall d. IsDiagram d => Rect_ -> d -> Effect Rect_
computeBounds_ = callUnsafe1 "computeBounds"

computePartsBounds_ :: forall d p. IsDiagram d => IsPart p => Array p -> Boolean -> d -> Effect Rect_
computePartsBounds_ = callUnsafe2 "computePartsBounds"

ensureBounds_ :: forall d. IsDiagram d => IsDiagram d => d -> Effect Unit
ensureBounds_ = callUnsafe0 "ensureBounds"

findLayer_ :: forall d. IsDiagram d => String -> d -> Effect (Maybe Layer_)
findLayer_ s d = toMaybe <$> callUnsafe1 "findLayer" s d

findLinkForData_ :: forall r d. IsDiagram d => Record r -> d -> Effect Link_
findLinkForData_ = callUnsafe1 "findLinkForData"

findLinkForKey_ :: forall d k. IsDiagram d => k -> d -> Effect Link_
findLinkForKey_ = callUnsafe1 "findLinkForKey"

findLinksByExample_ :: forall r d. IsDiagram d => Array (Record r) -> d -> Effect (Iterator_ Link_)
findLinksByExample_ = callUnsafe1 "findLinksByExample"

findNodeForData_ :: forall r d @n. IsDiagram d => IsNode n => Record r -> d -> Effect (Maybe n)
findNodeForData_ d di = toMaybe <$> callUnsafe1 "findNodeForData" d di

findNodeForKey_ :: forall d @n k. IsDiagram d => IsNode n => k -> d -> Effect (Maybe n)
findNodeForKey_ k d = toMaybe <$> callUnsafe1 "findNodeForKey" k d

findNodesByExample_ :: forall r d. IsDiagram d => Array (Record r) -> d -> Effect (Iterator_ SomeNode_)
findNodesByExample_ = callUnsafe1 "findNodesByExample"

findPartAt_ :: forall d @p. IsDiagram d => IsPart p => Point_ -> Boolean -> d -> Effect (Maybe p)
findPartAt_ p b d = toMaybe <$> callUnsafe2 "findPartAt" p b d

findPartForData_ :: forall r d @p. IsDiagram d => IsPart p => Record r -> d -> Effect (Maybe p)
findPartForData_ d di = toMaybe <$> callUnsafe1 "findPartForData" d di

findPartForKey_ :: forall d @p k. IsDiagram d => IsPart p => k -> d -> Effect (Maybe p)
findPartForKey_ k d = toMaybe <$> callUnsafe1 "findPartForKey" k d

findTopLevelGroups_ :: forall d. IsDiagram d => IsDiagram d => d -> Effect (Iterator_ Group_)
findTopLevelGroups_ = callUnsafe0 "findTopLevelGroups"

findTreeRoots_ :: forall d. IsDiagram d => d -> Effect (Iterator_ SomeNode_)
findTreeRoots_ = callUnsafe0 "findTreeRoots"

focus_ :: forall d. IsDiagram d => IsDiagram d => d -> Effect Unit
focus_ = callUnsafe0 "focus"

highlight_ :: forall d p. IsDiagram d => IsPart p => p -> d -> Effect Unit
highlight_ = callUnsafe1 "highlight"

highlightCollection_ :: forall d p. IsDiagram d => IsPart p => Array p -> d -> Effect Unit
highlightCollection_ = callUnsafe1 "highlightCollection"

layoutDiagram_ :: forall d. IsDiagram d => Boolean -> d -> Effect Unit
layoutDiagram_ = callUnsafe1 "layoutDiagram"

-- Undocumented
raiseDiagramEvent_ :: forall d. String -> d -> Effect Unit
raiseDiagramEvent_ = callUnsafe1 "raiseDiagramEvent"

rebuildParts_ :: forall d. IsDiagram d => IsDiagram d => d -> Effect Unit
rebuildParts_ = callUnsafe0 "rebuildParts"

remove_ :: forall d p. IsDiagram d => IsPart p => p -> d -> Effect Unit
remove_ = callUnsafe1 "remove"

removeDiagramListener_ :: forall d s. IsDiagram d => String -> (Fn1 (DiagramEvent_ s) Unit) -> d -> Effect Unit
removeDiagramListener_ name listener d = callUnsafe2 "removeDiagramListener" name listener d

removeLayer_ :: forall d. IsDiagram d => Layer_ -> d -> Effect Unit
removeLayer_ = callUnsafe1 "removeLayer"

-- TODO: Can all iterables just be foldables? TODO: check? optional argument
removeParts_ :: forall d p f. IsDiagram d => IsPart p => Foldable f => f p -> d -> Effect Unit
removeParts_ = callUnsafe1 "removeParts"

requestUpdate_ :: forall d. IsDiagram d => Boolean -> d -> Effect Unit
requestUpdate_ = callUnsafe1 "requestUpdate"

rollbackTransaction_ :: forall d. IsDiagram d => IsDiagram d => d -> Effect Boolean
rollbackTransaction_ = callUnsafe0 "rollbackTransaction"

scroll_ :: forall d. IsDiagram d => String -> String -> Number -> d -> Effect Unit
scroll_ = callUnsafe3 "scroll"

scrollToRect_ :: forall d. IsDiagram d => Rect_ -> d -> Effect Unit
scrollToRect_ = callUnsafe1 "scrollToRect"

select_ :: forall d p. IsDiagram d => IsPart p => p -> d -> Effect Unit
select_ = callUnsafe1 "select"

selectCollection_ :: forall d p. IsDiagram d => IsPart p => Array p -> d -> Effect Unit
selectCollection_ = callUnsafe1 "selectCollection"

startTransaction_ :: forall d. IsDiagram d => String -> d -> Effect Boolean
startTransaction_ = callUnsafe1 "startTransaction"

transformDocToView_ :: forall d. IsDiagram d => Point_ -> d -> Effect Point_
transformDocToView_ = callUnsafe1 "transformDocToView"

transformViewToDoc_ :: forall d. IsDiagram d => Point_ -> d -> Effect Point_
transformViewToDoc_ = callUnsafe1 "transformViewToDoc"

updateAllRelationshipsFromData_ :: forall d. IsDiagram d => IsDiagram d => d -> Effect Unit
updateAllRelationshipsFromData_ = callUnsafe0 "updateAllRelationshipsFromData"

updateAllTargetBindings_ :: forall d. IsDiagram d => String -> d -> Effect Unit
updateAllTargetBindings_ = callUnsafe1 "updateAllTargetBindings"

zoomToFit_ :: forall d. IsDiagram d => IsDiagram d => d -> Effect Unit
zoomToFit_ = callUnsafe0 "zoomToFit"

zoomToRect_ :: forall d. IsDiagram d => Rect_ -> EnumValue_ -> d -> Effect Unit
zoomToRect_ = callUnsafe2 "zoomToRect"

isUsingDOM_ :: forall d. IsDiagram d => IsDiagram d => d -> Effect Boolean
isUsingDOM_ = callUnsafe0 "isUsingDOM"

useDOM_ :: forall d. IsDiagram d => Boolean -> d -> Effect Unit
useDOM_ = callUnsafe1 "useDOM"

-- set :: forall d. IsDiagram d => Partial<Diagram>_ -> Effect d
-- set = callUnsafe1 "set"
-- fromDiv :: forall d. IsDiagram d => string | Element_ -> Effect d
-- fromDiv = callUnsafe1 "fromDiv"
-- inherit :: forall d. IsDiagram d => Function_ -> Function_ -> Effect Unit
-- inherit = callUnsafe2 "inherit"
-- addModelChangedListener :: forall d. IsDiagram d => ChangedEvent) => void_ -> Effect d
-- addModelChangedListener = callUnsafe1 "addModelChangedListener"
-- addChangedListener :: forall d. IsDiagram d => (ChangedEvent) => void_ -> Effect d
-- addChangedListener = callUnsafe1 "addChangedListener"
-- removeChangedListener :: forall d. IsDiagram d => ChangedEvent) => void_ -> Effect Unit
-- removeChangedListener = callUnsafe1 "removeChangedListener"
-- removeModelChangedListener :: forall d. IsDiagram d => ChangedEvent) => void_ -> Effect Unit
-- removeModelChangedListener = callUnsafe1 "removeModelChangedListener"
-- makeImage :: forall d. IsDiagram d => ImageRendererOptions_ -> Effect HTMLImageElement_
-- makeImage = callUnsafe1 "makeImage"
-- makeImageData :: forall l. ImageRendererOptions_ -> Effect string | HTMLImageElement | ImageData_
-- makeImageData = callUnsafe1 "makeImageData"
-- makeSvg :: forall l. SvgRendererOptions_ -> Effect SVGElement_
-- makeSvg = callUnsafe1 "makeSvg"
-- moveParts :: forall l p. IsPart p => Array p -> Point_ -> Boolean -> DraggingOptions_ -> Effect Unit
-- moveParts = callUnsafe4 "moveParts"
-- findObjectAt :: forall l. Point_ -> GraphObject) => T_ -> T) => boolean_ -> Effect T_
-- findObjectAt = callUnsafe3 "findObjectAt"
-- findObjectsAt :: forall l. Point_ -> GraphObject) => T_ -> T) => boolean_ -> S_ -> Effect S_
-- findObjectsAt = callUnsafe4 "findObjectsAt"
-- findObjectsIn :: forall l. Rect_ -> GraphObject) => T_ -> T) => boolean_ -> Boolean -> S_ -> Effect S_
-- findObjectsIn = callUnsafe5 "findObjectsIn"
-- findObjectsNear :: forall l. Point_ -> Number -> GraphObject) => T_ -> T) => boolean_ -> boolean | S_ -> S_ -> Effect S_
-- findObjectsNear = callUnsafe6 "findObjectsNear"
-- delayInitialization :: forall l. Diagram) => void_ -> Effect Unit
-- delayInitialization = callUnsafe1 "delayInitialization"
-- copyParts :: forall d. Array Part_ -> d -> Boolean -> Effect Map<Part, Part>_
-- copyParts = callUnsafe3 "copyParts"
-- commit :: forall l. Diagram) => void_ -> String -> Effect Unit
-- commit = callUnsafe2 "commit"
-- computeMove :: forall p. p -> Point_ -> DraggingOptions_ -> Point_ -> Effect Point_
-- computeMove = callUnsafe4 "computeMove"
-- findPartsAt :: forall l. Point_ -> Boolean -> S_ -> Effect S_
-- findPartsAt = callUnsafe3 "findPartsAt"
-- findPartsIn :: forall l. Rect_ -> Boolean -> Boolean -> S_ -> Effect S_
-- findPartsIn = callUnsafe4 "findPartsIn"
-- findPartsNear :: forall l. Point_ -> Number -> Boolean -> Boolean -> S_ -> Effect S_
-- findPartsNear = callUnsafe5 "findPartsNear"
-- setProperties_ :: r forall d. IsDiagram d => Record r -> d -> Effect d
-- setProperties_ = callUnsafe1 "setProperties"
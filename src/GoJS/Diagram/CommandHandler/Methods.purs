module GoJS.Diagram.CommandHandler.Methods where

import Prelude

import Effect (Effect)
import GoJS.Collection (Iterator_, Map_, Set_)
import GoJS.Diagram (DraggingInfo_, DraggingOptions_)
import GoJS.Diagram.CommandHandler.Types (CommandHandler_)
import GoJS.Diagram.Types (class IsGraphObject, class IsNode, class IsPart, Group_, SomePart_, TextBlock_)
import GoJS.Geometry.Types (Point_)
import GoJS.Unsafe (callUnsafe0, callUnsafe1, callUnsafe2)

canCollapseSubGraph_ :: Group_ -> CommandHandler_ -> Effect Boolean
canCollapseSubGraph_ = callUnsafe1 "canCollapseSubGraph"

canCollapseTree_ :: forall n. IsNode n => n -> CommandHandler_ -> Effect Boolean
canCollapseTree_ = callUnsafe1 "canCollapseTree"

canCopySelection_ :: CommandHandler_ -> Effect Boolean
canCopySelection_ = callUnsafe0 "canCopySelection"

canCutSelection_ :: CommandHandler_ -> Effect Boolean
canCutSelection_ = callUnsafe0 "canCutSelection"

canDecreaseZoom_ :: Number -> CommandHandler_ -> Effect Boolean
canDecreaseZoom_ = callUnsafe1 "canDecreaseZoom"

canDeleteSelection_ :: CommandHandler_ -> Effect Boolean
canDeleteSelection_ = callUnsafe0 "canDeleteSelection"

canEditTextBlock_ :: TextBlock_ -> CommandHandler_ -> Effect Boolean
canEditTextBlock_ = callUnsafe1 "canEditTextBlock"

canExpandSubGraph_ :: Group_ -> CommandHandler_ -> Effect Boolean
canExpandSubGraph_ = callUnsafe1 "canExpandSubGraph"

canExpandTree_ :: forall n. IsNode n => n -> CommandHandler_ -> Effect Boolean
canExpandTree_ = callUnsafe1 "canExpandTree"

canGroupSelection_ :: CommandHandler_ -> Effect Boolean
canGroupSelection_ = callUnsafe0 "canGroupSelection"

canIncreaseZoom_ :: Number -> CommandHandler_ -> Effect Boolean
canIncreaseZoom_ = callUnsafe1 "canIncreaseZoom"

canPasteSelection_ :: Point_ -> CommandHandler_ -> Effect Boolean
canPasteSelection_ = callUnsafe1 "canPasteSelection"

canRedo_ :: CommandHandler_ -> Effect Boolean
canRedo_ = callUnsafe0 "canRedo"

canResetZoom_ :: Number -> CommandHandler_ -> Effect Boolean
canResetZoom_ = callUnsafe1 "canResetZoom"

canScrollToPart_ :: forall p. IsPart p => p -> CommandHandler_ -> Effect Boolean
canScrollToPart_ = callUnsafe1 "canScrollToPart"

canSelectAll_ :: CommandHandler_ -> Effect Boolean
canSelectAll_ = callUnsafe0 "canSelectAll"

canShowContextMenu_ :: forall g. IsGraphObject g => g -> CommandHandler_ -> Effect Boolean
canShowContextMenu_ = callUnsafe1 "canShowContextMenu"

canStopCommand_ :: CommandHandler_ -> Effect Boolean
canStopCommand_ = callUnsafe0 "canStopCommand"

canUndo_ :: CommandHandler_ -> Effect Boolean
canUndo_ = callUnsafe0 "canUndo"

canUngroupSelection_ :: Group_ -> CommandHandler_ -> Effect Boolean
canUngroupSelection_ = callUnsafe1 "canUngroupSelection"

canZoomToFit_ :: CommandHandler_ -> Effect Boolean
canZoomToFit_ = callUnsafe0 "canZoomToFit"

collapseSubGraph_ :: Group_ -> CommandHandler_ -> Effect Unit
collapseSubGraph_ = callUnsafe1 "collapseSubGraph"

collapseTree_ :: forall n. IsNode n => n -> CommandHandler_ -> Effect Unit
collapseTree_ = callUnsafe1 "collapseTree"

copySelection_ :: CommandHandler_ -> Effect Unit
copySelection_ = callUnsafe0 "copySelection"

cutSelection_ :: CommandHandler_ -> Effect Unit
cutSelection_ = callUnsafe0 "cutSelection"

decreaseZoom_ :: Number -> CommandHandler_ -> Effect Unit
decreaseZoom_ = callUnsafe1 "decreaseZoom"

deleteSelection_ :: CommandHandler_ -> Effect Unit
deleteSelection_ = callUnsafe0 "deleteSelection"

doKeyDown_ :: CommandHandler_ -> Effect Unit
doKeyDown_ = callUnsafe0 "doKeyDown"

doKeyUp_ :: CommandHandler_ -> Effect Unit
doKeyUp_ = callUnsafe0 "doKeyUp"

editTextBlock_ :: TextBlock_ -> CommandHandler_ -> Effect Unit
editTextBlock_ = callUnsafe1 "editTextBlock"

expandSubGraph_ :: Group_ -> CommandHandler_ -> Effect Unit
expandSubGraph_ = callUnsafe1 "expandSubGraph"

expandTree_ :: forall n. IsNode n => n -> CommandHandler_ -> Effect Unit
expandTree_ = callUnsafe1 "expandTree"

groupSelection_ :: CommandHandler_ -> Effect Unit
groupSelection_ = callUnsafe0 "groupSelection"

increaseZoom_ :: Number -> CommandHandler_ -> Effect Unit
increaseZoom_ = callUnsafe1 "increaseZoom"

isValidMember_ :: forall p. IsPart p => Group_ -> p -> CommandHandler_ -> Effect Boolean
isValidMember_ = callUnsafe2 "isValidMember"

pasteFromClipboard_ :: forall @p. IsPart p => CommandHandler_ -> Effect (Set_ p)
pasteFromClipboard_ = callUnsafe0 "pasteFromClipboard"

pasteSelection_ :: Point_ -> CommandHandler_ -> Effect Unit
pasteSelection_ = callUnsafe1 "pasteSelection"

redo_ :: CommandHandler_ -> Effect Unit
redo_ = callUnsafe0 "redo"

resetZoom_ :: Number -> CommandHandler_ -> Effect Unit
resetZoom_ = callUnsafe1 "resetZoom"

scrollToPart_ :: forall p. IsPart p => p -> CommandHandler_ -> Effect Unit
scrollToPart_ = callUnsafe1 "scrollToPart"

selectAll_ :: CommandHandler_ -> Effect Unit
selectAll_ = callUnsafe0 "selectAll"

showContextMenu_ :: forall g. IsGraphObject g => g -> CommandHandler_ -> Effect Unit
showContextMenu_ = callUnsafe1 "showContextMenu"

stopCommand_ :: CommandHandler_ -> Effect Unit
stopCommand_ = callUnsafe0 "stopCommand"

undo_ :: CommandHandler_ -> Effect Unit
undo_ = callUnsafe0 "undo"

ungroupSelection_ :: Group_ -> CommandHandler_ -> Effect Unit
ungroupSelection_ = callUnsafe1 "ungroupSelection"

zoomToFit_ :: CommandHandler_ -> Effect Unit
zoomToFit_ = callUnsafe0 "zoomToFit"

addTopLevelParts_ :: Iterator_ SomePart_ -> Boolean -> CommandHandler_ -> Effect Boolean
addTopLevelParts_ = callUnsafe2 "addTopLevelParts"

computeEffectiveCollection_ :: Iterator_ SomePart_ -> DraggingOptions_ -> CommandHandler_ -> Effect (Map_ SomePart_ DraggingInfo_)
computeEffectiveCollection_ = callUnsafe2 "computeEffectiveCollection"

copyToClipboard_ :: Iterator_ SomePart_ -> CommandHandler_ -> Effect Unit
copyToClipboard_ = callUnsafe1 "copyToClipboard"

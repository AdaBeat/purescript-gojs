module GoJS.Tool.ToolManager.Properties where

import GoJS.Collection (List_)
import GoJS.Diagram.Types (Adornment_)
import GoJS.EnumValue (EnumValue_)
import GoJS.Geometry.Types (Size_)
import GoJS.Tool.Types (class IsTool, ActionTool_, ClickCreatingTool_, ClickSelectingTool_, ContextMenuTool_, DragSelectingTool_, DraggingTool_, LinkReshapingTool_, LinkingTool_, PanningTool_, RelinkingTool_, ResizingTool_, RotatingTool_, TextEditingTool_, ToolManager_)
import GoJS.Unsafe (getUnsafe)

_actionTool :: ToolManager_ -> ActionTool_
_actionTool = getUnsafe [ "actionTool" ]

_clickCreatingTool :: ToolManager_ -> ClickCreatingTool_
_clickCreatingTool = getUnsafe [ "clickCreatingTool" ]

_clickSelectingTool :: ToolManager_ -> ClickSelectingTool_
_clickSelectingTool = getUnsafe [ "clickSelectingTool" ]

_contextMenuTool :: ToolManager_ -> ContextMenuTool_
_contextMenuTool = getUnsafe [ "contextMenuTool" ]

_currentToolTip :: ToolManager_ -> Adornment_
_currentToolTip = getUnsafe [ "currentToolTip" ]

_dragSelectingTool :: ToolManager_ -> DragSelectingTool_
_dragSelectingTool = getUnsafe [ "dragSelectingTool" ]

_dragSize :: ToolManager_ -> Size_
_dragSize = getUnsafe [ "dragSize" ]

_draggingTool :: ToolManager_ -> DraggingTool_
_draggingTool = getUnsafe [ "draggingTool" ]

_gestureBehavior :: ToolManager_ -> EnumValue_
_gestureBehavior = getUnsafe [ "gestureBehavior" ]

_holdDelay :: ToolManager_ -> Number
_holdDelay = getUnsafe [ "holdDelay" ]

_hoverDelay :: ToolManager_ -> Number
_hoverDelay = getUnsafe [ "hoverDelay" ]

_linkReshapingTool :: ToolManager_ -> LinkReshapingTool_
_linkReshapingTool = getUnsafe [ "linkReshapingTool" ]

_linkingTool :: ToolManager_ -> LinkingTool_
_linkingTool = getUnsafe [ "linkingTool" ]

_mouseWheelBehavior :: ToolManager_ -> EnumValue_
_mouseWheelBehavior = getUnsafe [ "mouseWheelBehavior" ]

_panningTool :: ToolManager_ -> PanningTool_
_panningTool = getUnsafe [ "panningTool" ]

_relinkingTool :: ToolManager_ -> RelinkingTool_
_relinkingTool = getUnsafe [ "relinkingTool" ]

_resizingTool :: ToolManager_ -> ResizingTool_
_resizingTool = getUnsafe [ "resizingTool" ]

_rotatingTool :: ToolManager_ -> RotatingTool_
_rotatingTool = getUnsafe [ "rotatingTool" ]

_textEditingTool :: ToolManager_ -> TextEditingTool_
_textEditingTool = getUnsafe [ "textEditingTool" ]

_toolTipDuration :: ToolManager_ -> Number
_toolTipDuration = getUnsafe [ "toolTipDuration" ]

_mouseDownTools :: forall @t. IsTool t => ToolManager_ -> List_ t
_mouseDownTools = getUnsafe [ "mouseDownTools" ]

_mouseMoveTools :: forall @t. IsTool t => ToolManager_ -> List_ t
_mouseMoveTools = getUnsafe [ "mouseMoveTools" ]

_mouseUpTools :: forall @t. IsTool t => ToolManager_ -> List_ t
_mouseUpTools = getUnsafe [ "mouseUpTools" ]
module GoJS.Tool.Types where

class IsTool (t :: Type)

-- | Tool types.
foreign import data ActionTool_ :: Type
foreign import data ClickCreatingTool_ :: Type
foreign import data ClickSelectingTool_ :: Type
foreign import data ContextMenuTool_ :: Type
foreign import data DragSelectingTool_ :: Type
foreign import data DraggingTool_ :: Type
foreign import data LinkReshapingTool_ :: Type
foreign import data LinkingTool_ :: Type
foreign import data PanningTool_ :: Type
foreign import data RelinkingTool_ :: Type
foreign import data ResizingTool_ :: Type
foreign import data RotatingTool_ :: Type
foreign import data TextEditingTool_ :: Type
foreign import data ToolManager_ :: Type -- A special tool that manages all other tools.


instance IsTool ClickCreatingTool_
instance IsTool ActionTool_
instance IsTool ClickSelectingTool_
instance IsTool ContextMenuTool_
instance IsTool DragSelectingTool_
instance IsTool DraggingTool_
instance IsTool LinkReshapingTool_
instance IsTool LinkingTool_
instance IsTool PanningTool_
instance IsTool RelinkingTool_
instance IsTool ResizingTool_
instance IsTool RotatingTool_
instance IsTool TextEditingTool_

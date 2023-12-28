module GoJS.Layout.LayoutEdge.Constructors where

import Effect (Effect)
import GoJS.Layout (CircularEdge_, ForceDirectedEdge_, LayeredDigraphEdge_, TreeEdge_)
import GoJS.Unsafe (constructor0)

newCircularEdge :: Effect CircularEdge_
newCircularEdge = constructor0 "CircularEdge"

newForceDirectedEdge :: Effect ForceDirectedEdge_
newForceDirectedEdge = constructor0 "ForceDirectedEdge"

newLayeredDigraphEdge :: Effect LayeredDigraphEdge_
newLayeredDigraphEdge = constructor0 "LayeredDigraphEdge"

newTreeEdge :: Effect TreeEdge_
newTreeEdge = constructor0 "TreeEdge"
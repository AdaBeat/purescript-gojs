module GoJS.Layout.LayoutVertex.Constructors where

import Effect (Effect)
import GoJS.Layout (CircularVertex_, ForceDirectedVertex_, LayeredDigraphVertex_, TreeVertex_)
import GoJS.Unsafe (constructor0)

newCircularVertex :: Effect CircularVertex_
newCircularVertex = constructor0 "CircularVertex"

newForceDirectedVertex :: Effect ForceDirectedVertex_
newForceDirectedVertex = constructor0 "ForceDirectedVertex"

newLayeredDigraphVertex :: Effect LayeredDigraphVertex_
newLayeredDigraphVertex = constructor0 "LayeredDigraphVertex"

newTreeVertex :: Effect TreeVertex_
newTreeVertex = constructor0 "TreeVertex"
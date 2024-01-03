module GoJS.Layout.LayoutVertex.Properties where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (toMaybe)
import GoJS.Collection (Iterator_)
import GoJS.GraphObject.Types (class IsNode)
import GoJS.Layout (class LayoutNetwork)
import GoJS.Unsafe (getUnsafe)

_width :: forall _l _n _e v. LayoutNetwork _l _n _e v => v -> Number
_width = getUnsafe [ "width" ]

_height :: forall _l _n _e v. LayoutNetwork _l _n _e v => v -> Number
_height = getUnsafe [ "height" ]

_edges :: forall _l _n e v. LayoutNetwork _l _n e v => v -> Iterator_ e
_edges = getUnsafe [ "edges" ]

_level :: forall _l _n _e v. LayoutNetwork _l _n _e v => v -> Number
_level = getUnsafe [ "level" ]

_edgesCount :: forall _l _n _e v. LayoutNetwork _l _n _e v => v -> Number
_edgesCount = getUnsafe [ "edgesCount" ]

_destinationVertexes :: forall _l _n _e v. LayoutNetwork _l _n _e v => v -> Iterator_ v
_destinationVertexes = getUnsafe [ "destinationVertexes" ]

_sourceVertexes :: forall _l _n _e v. LayoutNetwork _l _n _e v => v -> Iterator_ v
_sourceVertexes = getUnsafe [ "sourceVertexes" ]

_node :: forall _l _n _e v @node. IsNode node => LayoutNetwork _l _n _e v => v -> Maybe node
_node = toMaybe <<< getUnsafe [ "node" ]
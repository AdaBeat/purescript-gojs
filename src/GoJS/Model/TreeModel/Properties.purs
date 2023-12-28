module GoJS.Model.TreeModel.Properties where

import GoJS.Model.Types (TreeModel_)
import GoJS.Unsafe (getUnsafe)

-- TODO: These may return functions and not strings
_nodeParentKeyProperty :: forall nodeData. TreeModel_ nodeData -> String
_nodeParentKeyProperty = getUnsafe [ "nodeParentKeyProperty" ]

_parentLinkCategoryProperty :: forall nodeData. TreeModel_ nodeData -> String
_parentLinkCategoryProperty = getUnsafe [ "parentLinkCategoryProperty" ]

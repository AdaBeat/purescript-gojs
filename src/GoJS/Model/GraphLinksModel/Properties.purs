module GoJS.Model.GraphLinksModel.Properties where

import GoJS.Model.Types (GraphLinksModel_)
import GoJS.Unsafe (getUnsafe)

_archetypeNodeData :: forall nodeData linkData. GraphLinksModel_ nodeData linkData -> Record nodeData
_archetypeNodeData = getUnsafe [ "archetypeNodeData" ]

_linkDataArray :: forall nodeData linkData. GraphLinksModel_ nodeData linkData -> Array (Record linkData)
_linkDataArray = getUnsafe [ "linkDataArray" ]

-- TODO: Missing: These should support functions to keys as well
_linkCategoryProperty :: forall nodeData linkData. GraphLinksModel_ nodeData linkData -> String
_linkCategoryProperty = getUnsafe [ "linkCategoryProperty" ]

_linkFromKeyProperty :: forall nodeData linkData. GraphLinksModel_ nodeData linkData -> String
_linkFromKeyProperty = getUnsafe [ "linkFromKeyProperty" ]

_linkFromPortIdProperty :: forall nodeData linkData. GraphLinksModel_ nodeData linkData -> String
_linkFromPortIdProperty = getUnsafe [ "linkFromPortIdProperty" ]

_linkKeyProperty :: forall nodeData linkData. GraphLinksModel_ nodeData linkData -> String
_linkKeyProperty = getUnsafe [ "linkKeyProperty" ]

_linkLabelKeysProperty :: forall nodeData linkData. GraphLinksModel_ nodeData linkData -> String
_linkLabelKeysProperty = getUnsafe [ "linkLabelKeysProperty" ]

_linkToKeyProperty :: forall nodeData linkData. GraphLinksModel_ nodeData linkData -> String
_linkToKeyProperty = getUnsafe [ "linkToKeyProperty" ]

_linkToPortIdProperty :: forall nodeData linkData. GraphLinksModel_ nodeData linkData -> String
_linkToPortIdProperty = getUnsafe [ "linkToPortIdProperty" ]
-- TODO: Missing: makeUniqueLinkKeyFunction, nodeGroupKeyProperty, nodeIsGroupProperty

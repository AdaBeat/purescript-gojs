module GoJS.GraphObject.Picture.Properties where

import GoJS.GraphObject.Types (Picture_)
import GoJS.EnumValue (EnumValue_)
import GoJS.Geometry.Types (Rect_, Spot_)
import GoJS.Unsafe (getUnsafe)

_flip :: Picture_ -> EnumValue_
_flip = getUnsafe [ "flip" ]

_imageAlignment :: Picture_ -> Spot_
_imageAlignment = getUnsafe [ "imageAlignment" ]

_imageStretch :: Picture_ -> EnumValue_
_imageStretch = getUnsafe [ "imageStretch" ]

_naturalBounds :: Picture_ -> Rect_
_naturalBounds = getUnsafe [ "naturalBounds" ]

_source :: Picture_ -> String
_source = getUnsafe [ "source" ]

_sourceRect :: Picture_ -> Rect_
_sourceRect = getUnsafe [ "sourceRect" ]

-- element :: HTMLstuff, errorFunction
-- sourceCrossOrigin, successFunction

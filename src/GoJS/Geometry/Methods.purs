module GoJS.Geometry.Methods where

import Effect (Effect)
import GoJS.Geometry.Types (Geometry_, Point_, Rect_)
import GoJS.Unsafe (callUnsafe0, callUnsafe1, callUnsafe2, callUnsafe3)

add_ :: Geometry_ -> Geometry_ -> Effect Geometry_
add_ = callUnsafe1 "add"

computeBoundsWithoutOrigin_ :: Geometry_ -> Effect Rect_
computeBoundsWithoutOrigin_ = callUnsafe0 "computeBoundsWithoutOrigin"

containsPoint_ :: Point_ -> Geometry_ -> Effect Boolean
containsPoint_ = callUnsafe1 "containsPoint"

copy_ :: Geometry_ -> Effect Geometry_
copy_ = callUnsafe0 "copy"

getAngleAlongPath_ :: Number -> Boolean -> Geometry_ -> Effect Number
getAngleAlongPath_ = callUnsafe2 "getAngleAlongPath"

getFractionForPoint_ :: Point_ -> Geometry_ -> Effect Number
getFractionForPoint_ = callUnsafe1 "getFractionForPoint"

getPointAlongPath_ :: Number -> Boolean -> Geometry_ -> Effect Point_
getPointAlongPath_ = callUnsafe2 "getPointAlongPath"

normalize_ :: Geometry_ -> Effect Geometry_
normalize_ = callUnsafe0 "normalize"

offset_ :: Number -> Number -> Geometry_ -> Effect Geometry_
offset_ = callUnsafe2 "offset"

rotate_ :: Number -> Number -> Number -> Geometry_ -> Effect Geometry_
rotate_ = callUnsafe3 "rotate"

scale_ :: Number -> Number -> Geometry_ -> Effect Geometry_
scale_ = callUnsafe2 "scale"
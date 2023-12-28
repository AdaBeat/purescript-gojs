module GoJS.Geometry.Rect.Methods where

import Effect (Effect)
import GoJS.Geometry.Types (Margin_, Rect_)
import GoJS.Unsafe (callUnsafe0, callUnsafe1, callUnsafe2, callUnsafe4)

addMargin_ :: Margin_ -> Rect_ -> Effect Rect_
addMargin_ = callUnsafe1 "addMargin"

contains_ :: Number -> Number -> Number -> Number -> Rect_ -> Effect Boolean
contains_ = callUnsafe4 "contains"

containsPoint_ :: Number -> Number -> Rect_ -> Effect Boolean
containsPoint_ = callUnsafe2 "containsPoint"

containsRect_ :: Number -> Number -> Number -> Number -> Rect_ -> Effect Boolean
containsRect_ = callUnsafe4 "containsRect"

copy_ :: Rect_ -> Effect Rect_
copy_ = callUnsafe0 "copy"

equalTo_ :: Rect_ -> Rect_ -> Effect Boolean
equalTo_ = callUnsafe1 "equalTo"

equals_ :: Rect_ -> Rect_ -> Effect Boolean
equals_ = callUnsafe1 "equals"

grow_ :: Number -> Number -> Rect_ -> Effect Rect_
grow_ = callUnsafe2 "grow"

inflate_ :: Number -> Number -> Rect_ -> Effect Rect_
inflate_ = callUnsafe2 "inflate"

intersectRect_ :: Rect_ -> Rect_ -> Effect Rect_
intersectRect_ = callUnsafe1 "intersect"

intersect_ :: Number -> Number -> Number -> Number -> Rect_ -> Effect Rect_
intersect_ = callUnsafe4 "intersectRect"

intersectsRect_ :: Rect_ -> Rect_ -> Effect Boolean
intersectsRect_ = callUnsafe1 "intersects"

intersects_ :: Number -> Number -> Number -> Number -> Rect_ -> Effect Boolean
intersects_ = callUnsafe4 "intersectsRect"

isEmpty_ :: Rect_ -> Effect Boolean
isEmpty_ = callUnsafe0 "isEmpty"

isReal_ :: Rect_ -> Effect Boolean
isReal_ = callUnsafe0 "isReal"

offset_ :: Number -> Number -> Rect_ -> Effect Rect_
offset_ = callUnsafe2 "offset"

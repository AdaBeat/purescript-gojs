module GoJS.GraphObject.Types where

import Prelude

import Unsafe.Coerce (unsafeCoerce)

-- | GraphObject types
foreign import data Shape_ :: Type
foreign import data Picture_ :: Type
foreign import data TextBlock_ :: Type
foreign import data Placeholder_ :: Type
foreign import data Panel_ :: Type
foreign import data Button_ :: Type
foreign import data Part_ :: Type
foreign import data Adornment_ :: Type
foreign import data Node_ :: Type
foreign import data Link_ :: Type
foreign import data Group_ :: Type

-- | Existential versions of graph objects that are parent classes
newtype SomeGraphObject_ = SomeGraphObject_ (forall g. IsGraphObject g => g)

class IsGraphObject (a :: Type)

instance IsGraphObject Shape_
instance IsGraphObject Placeholder_
instance IsGraphObject TextBlock_
instance IsGraphObject Picture_
instance IsGraphObject Panel_
instance IsGraphObject Button_ -- Buttons are really just panels
instance IsGraphObject Part_
instance IsGraphObject Node_
instance IsGraphObject Group_
instance IsGraphObject Link_
instance IsGraphObject Adornment_
instance IsGraphObject SomeGraphObject_

class IsGraphObject a <= IsPanel a where
  fromPanel :: Panel_ -> a
instance IsPanel Panel_ where
  fromPanel = identity
instance IsPanel Button_ where -- Buttons are really just panels
  fromPanel = unsafeCoerce
instance IsPanel Part_ where
  fromPanel = unsafeCoerce
instance IsPanel Node_ where
  fromPanel = unsafeCoerce
instance IsPanel Group_ where
  fromPanel = unsafeCoerce
instance IsPanel Link_ where
  fromPanel = unsafeCoerce
instance IsPanel Adornment_ where
  fromPanel = unsafeCoerce

class IsPanel a <= IsPart a where
  fromPart :: Part_ -> a
instance IsPart Part_ where
  fromPart = identity
instance IsPart Node_ where
  fromPart = unsafeCoerce
instance IsPart Group_ where
  fromPart = unsafeCoerce
instance IsPart Link_ where
  fromPart = unsafeCoerce
instance IsPart Adornment_ where
  fromPart = unsafeCoerce
class IsPart a <= IsNode a where
  fromNode :: Node_ -> a
instance IsNode Node_ where
  fromNode = identity
instance IsNode Group_ where
  fromNode = unsafeCoerce
module GoJS.GraphObject.Types where

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
newtype SomePanel_ = SomePanel_ (forall p. IsPanel p => p)
newtype SomePart_ = SomePart_ (forall p. IsPart p => p)
newtype SomeNode_ = SomeNode_ (forall n. IsNode n => n)


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
instance IsGraphObject SomePanel_
instance IsGraphObject SomePart_
instance IsGraphObject SomeNode_

class IsGraphObject a <= IsPanel a
instance IsPanel Panel_
instance IsPanel Button_ -- Buttons are really just panels
instance IsPanel Part_
instance IsPanel Node_
instance IsPanel Group_
instance IsPanel Link_
instance IsPanel Adornment_
instance IsPanel SomePanel_
instance IsPanel SomePart_
instance IsPanel SomeNode_

class IsPanel a <= IsPart a
instance IsPart Part_
instance IsPart Node_
instance IsPart Group_
instance IsPart Link_
instance IsPart Adornment_
instance IsPart SomePart_
instance IsPart SomeNode_
class IsPart a <= IsNode a
instance IsNode Node_
instance IsNode Group_
instance IsNode SomeNode_
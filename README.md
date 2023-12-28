# GoJS bindings for PureScript

This library contains "low-level" bindings for methods, properties, constructors, and static methods for the [GoJS](link-to-gojs) framework for building interactive diagrams.

## Design principles

This library is still _*experimental*_ so much of the below is subject to change.

### Class structure
This library is kept as simple as possible. It uses a rudimentary class structure to model JavaScript classes: for example, in GoJS, there's the following class hierachy:

```
             ┌---- Shape 
 (abstract)  ├---- TextBlock
GraphObject -┼---- Picture                ┌---- Adornment
             ├---- Placeholder            ├---- Link
             └---- Panel -------- Part ---┴---- Node ------ Group 
```
In this library, this is modeled with methodless typeclasses `IsGraphObject`, `IsPanel` etc. `GraphObject` being an abstract class simply means it doesn't have a corresponding opaque foreign type `GraphObject_`, unlike `Shape_`, `Panel_` and `Part_` etc.

### Return types
1. **Collections**: Some methods in GoJS return collections of `GraphObject`s. Since collections in PureScript are almost always homogeneous, the closest model to this in PureScript is something like a list of existential types `SomeGraphObject_` - we can call any method that accepts a type implementing the `IsGraphObject` typeclass on such elements, but nothing more specific in the context of the list. The alternative is to have the returned collections be of a type determined by the caller.
2. **Polymorphic return types**: Many methods return classes. In this case we do allow the caller to determine the output, by having the output type as a visible type variable. This is often needed if the output of such a function is not called by a function accepting a concrete type (and instead accepts any argument implementing a child class), which would disambiguate the type. For example, consider the following code:
```purescript
myNode <- someLink # _fromNode -- _fromNode :: forall @n. IsNode n => Link_ -> Maybe n
case myNode of
  Just n -> n # findColumnForLocalX_ 10.0 -- forall p. IsPanel p => Number -> p -> Effect Number
  Nothing -> pure 20.0
```
The PureScript compiler can't know what the type of `n` should be. All it knows is that it implements the `IsNode` class - it is ambiguous, and so will refuse to compile this code. The solution is to type apply the output of `_fromNode`, like so: 
```purescript
myNode <- someLink # _fromNode @Group_ -- _fromNode :: Link_ -> Maybe Group_
case myNode of
  Just n -> n # findColumnForLocalX_ 10.0 -- Number -> Group_ -> Effect Number
  Nothing -> pure 20.0
```

### Getting and setting properties

A couple concerns with the current design:

1. #### Pure getters - not referentially transparent!
An important aspect of this library is that getting properties of opaque types is not referentially transparent! 

```purescript
let angle = someLink # _midAngle -- say this returns 10.0
setUnsafe someLink {midAngle: 1.0}
let angle2 = someLink # _midAngle -- this will return 1.0!
```

This is a big break from pure FP principles, and the reason it was done this way is so that composition of getters was 1. cleaner and 2. more performant, since impure getters would imply additional function calls. This makes the code look a lot like TypeScript.

2. #### Setting properties is not type-safe
This was done in order to allow deeply nested effectful setting of properties in opaque types, for example:
```purescript
setUnsafe someDiagram {"toolManager.relinkingTool.temporaryLink": someLink}
```


An alternative to this is use a lens-based approach (so replace getters with lenses that operate on newtyped records) and have `setUnsafe` operate on the same lenses, except do it effectfully; so the code above would look like this:

```purescript
setUnsafe someDiagram (_toolManager <<< _relinkingTool <<< _temporaryLink) someLink
```

This will probably be implemented in the future, as lenses also solve another problem, which is that different classes often have properties that are named the same, but with the current approach, there's no way to make the inputs polymorphic and type-safe; with lenses, they can be expressed on `newtype`d records that have a field named the right thing.

### TODO:
[ ] - Handle TypeScript unions as Variants in order to avoid hand-rolling sum types - this is done in some methods already, see Animation.Methods
[ ] - Implement GoJS's `IncrementalData`
[ ] - Support optional arguments to methods - currently most optional methods are simply required by the bindings
[ ] - Add documentation
[ ] - Add rest of missing Prototype methods
[ ] - Add missing Diagram methods
[ ] - Address peppered TODOs
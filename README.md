Interfaces
==========

Haxe implementation of interfaces for the flash API.


Motives
-------

The motive behind this is to try to enable proper OO code to be written by allowing developers to code to an interface rather than doing it to an implementation.

Currently it's impossible to do this using the flash API, as the whole thing is based on inheritance and there's no language interfaces for any of these similarly exposed implementations.

The reason why all the interface names are suffixed with the word Interface, is to allow them to be used easily with their flash API counterparts. Personally, I would have preferred to not have this suffix, and have the interfaces called, for example, Sprite rather than SpriteInterface. But this would make it hard to use the interface with the already existing Sprite class.


Use Cases
---------

Let's say you have an interface that defines a few methods that a certain object of your domain needs to have, in order to satisfy a dependency of some other object. Now, let's say that in addition to that behaviour, your object also needs to be a DisplayObject.
There's really no way of assuring that the dependency will be correctly met.

With these interfaces, you would then make your own interface extend the DisplayObjectInterface, and ensure that the dependency could be correctly fulfilled.


But why???
----------

Some might ask, why? Looking at the "use cases" example, doesn't this allow someone to create a class that implements all of the same methods as the DisplayObject, and use it instead of the DisplayObject itself?

Well, the answer is yes. And that's a good thing, see! The thing is, we don't care about the implementation. Implementation should be hidden inside the "black box" that is a class. What we care about, is that our dependency knows how to answer to certain method calls, and interfaces give us that.

By shifting to this way of thinking, and creating these interfaces, we're enabling proper Dependency Injection to happen in Haxe when using the flash API.

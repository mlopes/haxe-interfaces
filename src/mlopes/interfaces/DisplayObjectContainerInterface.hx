package mlopes.interfaces;

import flash.display.DisplayObject;
import flash.geom.Point;


interface DisplayObjectContainerInterface extends InteractiveObjectInterface
{
    public var mouseChildren:Bool;
    public var numChildren:Int;
    public var tabChildren:Bool;

    public function addChild(child:DisplayObject):DisplayObject;
    public function addChildAt(child:DisplayObject, index:Int):DisplayObject;
    public function areInaccessibleObjectsUnderPoint(point:Point):Bool;
    public function contains(child:DisplayObject):Bool;
    public function getChildAt(index:Int):DisplayObject;
    public function getChildByName(name:String):DisplayObject;
    public function getChildIndex(child:DisplayObject):Int;
    public function getObjectsUnderPoint(point:Point):Array<DisplayObject>;
    public function removeChild(child:DisplayObject):DisplayObject;
    public function removeChildAt(index:Int):DisplayObject;
    public function removeChildren(beginIndex:Int, endIndex:Int):Void;
    public function setChildIndex(child:DisplayObject, index:Int):Void;
    public function swapChildren(child1:DisplayObject, child2:DisplayObject):Void;
    public function swapChildrenAt(index1:Int, index2:Int):Void;
}
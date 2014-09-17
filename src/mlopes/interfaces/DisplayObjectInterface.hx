package mlopes.interfaces;

import flash.display.BlendMode;
import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.display.LoaderInfo;
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.geom.Transform;


interface DisplayObjectInterface extends IEventDispatcher
{

    public var alpha:Float;
    public var blendMode:BlendMode;
    public var cacheAsBitmap:Bool;
    public var filters:Array<Dynamic>;
    public var height:Float;
    public var loaderInfo:LoaderInfo;
    public var mask:DisplayObject;
    public var mouseX:Float;
    public var mouseY:Float;
    public var name:String;
    public var opaqueBackground:Null<UInt>;
    public var parent:DisplayObjectContainer;
    public var root:DisplayObject;
    public var rotation:Float;
    public var scale9Grid:Rectangle;
    public var scaleX:Float;
    public var scaleY:Float;
    public var scrollRect:Rectangle;
    public var stage:Stage;
    public var transform:Transform;
    public var visible:Bool;
    public var width:Float;
    public var x:Float;
    public var y:Float;

    public function getBounds(targetCoordinateSpace:DisplayObject):Rectangle;
    public function getRect(targetCoordinateSpace:DisplayObject):Rectangle;
    public function globalToLocal(point:Point):Point;
    public function hitTestObject(obj:DisplayObject):Bool;
    public function hitTestPoint(x:Float, y:Float, shapeFlag:Bool):Bool;
    public function localToGlobal(point:Point):Point;
}
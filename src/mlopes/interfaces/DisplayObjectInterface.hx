package mlopes.interfaces;

import flash.display.BlendMode;
import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.display.LoaderInfo;
import flash.events.IEventDispatcher;
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.geom.Transform;
import flash.display.Stage;
import flash.filters.BitmapFilter;


interface DisplayObjectInterface extends IEventDispatcher
{

    public var alpha:Float;
    public var blendMode:BlendMode;
    public var cacheAsBitmap:Bool;
    public var filters:Array<BitmapFilter>;
    public var height:Float;
    public var loaderInfo (default,never):LoaderInfo;
    public var mask:DisplayObject;
    public var mouseX (default, never):Float;
    public var mouseY (default, never):Float;
    public var name:String;
    public var opaqueBackground:Null<UInt>;
    public var parent (default, null):DisplayObjectContainer;
    public var root (default, never):DisplayObject;
    public var rotation:Float;
    public var scale9Grid:Rectangle;
    public var scaleX:Float;
    public var scaleY:Float;
    public var scrollRect:Rectangle;
    public var stage (default, null):Stage;
    public var transform:Transform;
    public var visible:Bool;
    public var width:Float;
    public var x:Float;
    public var y:Float;

    public function getBounds(targetCoordinateSpace:DisplayObject):Rectangle;
    public function getRect(targetCoordinateSpace:DisplayObject):Rectangle;
    public function globalToLocal(point:Point):Point;
    public function hitTestObject(obj:DisplayObject):Bool;
    public function hitTestPoint(x:Float, y:Float, shapeFlag:Bool = false):Bool;
    public function localToGlobal(point:Point):Point;
}
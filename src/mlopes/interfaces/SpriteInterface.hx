package mlopes.interfaces;

import flash.display.Graphics;
import flash.geom.Rectangle;


interface SpriteInterface
{
    public var buttonMode:Bool;
    public var graphics:Graphics;
    public var useHandCursor:Bool;

    public function startDrag(lockCenter:Bool, bounds:Rectangle):Void;
    public function stopDrag():Void;
}
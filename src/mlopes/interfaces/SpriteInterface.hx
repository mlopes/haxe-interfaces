package mlopes.interfaces;

import flash.display.Graphics;
import flash.geom.Rectangle;


interface SpriteInterface extends DisplayObjectContainerInterface
{
    public var buttonMode:Bool;
    public var graphics (default,never):Graphics;
    public var useHandCursor:Bool;

    public function startDrag(lockCenter:Bool = false, bounds:Rectangle = null):Void;
    public function stopDrag():Void;
}
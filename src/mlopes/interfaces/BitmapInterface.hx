package mlopes.interfaces;

import flash.display.BitmapData;
import flash.display.PixelSnapping;


interface BitmapInterface extends DisplayObjectInterface
{
    public var bitmapData:BitmapData;
    public var pixelSnapping:PixelSnapping;
    public var smoothing:Bool;
}
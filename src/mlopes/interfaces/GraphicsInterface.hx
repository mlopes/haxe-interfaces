package mlopes.interfaces;

import flash.display.BitmapData;
import flash.display.CapsStyle;
import flash.display.GradientType;
import flash.display.GraphicsPathWinding;
import flash.display.InterpolationMethod;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.SpreadMethod;
import flash.display.TriangleCulling;
import flash.geom.Matrix;
import flash.Vector;
import flash.display.IGraphicsData;


interface GraphicsInterface
{
    public function beginBitmapFill(bitmap:BitmapData, matrix:Matrix, repeat:Bool, smooth:Bool):Void;
    public function beginFill(color:UInt, alpha:Float):Void;
    public function beginGradientFill(type:GradientType, colors:Array<UInt>, alphas:Array<Dynamic>, ratios:Array<Dynamic>, matrix:Matrix, spreadMethod:SpreadMethod, interpolationMethod:InterpolationMethod, focalPointRatio:Float):Void;
    public function clear():Void;
    public function curveTo(controlX:Float, controlY:Float, anchorX:Float, anchorY:Float):Void;
    public function drawCircle(x:Float, y:Float, radius:Float):Void;
    public function drawEllipse(x:Float, y:Float, width:Float, height:Float):Void;
    public function drawGraphicsData(graphicsData:Vector<IGraphicsData>):Void;
    public function drawPath(commands:Vector<Int>, data:Vector<Float>, winding:GraphicsPathWinding):Void;
    public function drawRect(x:Float, y:Float, width:Float, height:Float):Void;
    public function drawRoundRect(x:Float, y:Float, width:Float, height:Float, ellipseWidth:Float, ellipseHeight:Float):Void;
    public function drawRoundRectComplex(x:Float, y:Float, width:Float, height:Float, topLeftRadius:Float, topRightRadius:Float, bottomLeftRadius:Float, bottomRightRadius:Float):Void;
    public function drawTriangles(vertices:Vector<Float>, indices:Vector<Int>, uvtData:Vector<Float>, culling:TriangleCulling):Void;
    public function endFill():Void;
    public function lineBitmapStyle(bitmap:BitmapData, matrix:Matrix, repeat:Bool, smooth:Bool):Void;
    public function lineGradientStyle(type:GradientType, colors:Array<UInt>, alphas:Array<Dynamic>, ratios:Array<Dynamic>, matrix:Matrix, spreadMethod:SpreadMethod, interpolationMethod:InterpolationMethod, focalPointRatio:Float):Void;
    public function lineStyle(thickness:Float, color:UInt, alpha:Float, pixelHinting:Bool, scaleMode:LineScaleMode, caps:CapsStyle, joints:JointStyle, miterLimit:Float):Void;
    public function lineTo(x:Float, y:Float):Void;
    public function moveTo(x:Float, y:Float):Void;
}
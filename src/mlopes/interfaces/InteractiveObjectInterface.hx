package mlopes.interfaces;


interface InteractiveObjectInterface extends DisplayObject
{
    public var doubleClickEnabled:Bool;
    public var mouseEnabled:Bool;
    public var needsSoftKeyboard:Bool;

    public function requestSoftKeyboard():Bool;
}
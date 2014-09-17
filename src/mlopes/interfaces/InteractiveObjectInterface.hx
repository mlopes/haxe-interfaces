package mlopes.interfaces;


interface InteractiveObjectInterface
{
    public var doubleClickEnabled:Bool;
    public var mouseEnabled:Bool;
    public var needsSoftKeyboard:Bool;
    public function requestSoftKeyboard():Bool;
}
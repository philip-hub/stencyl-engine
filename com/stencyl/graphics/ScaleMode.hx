package com.stencyl.graphics;

@:enum abstract ScaleMode(Int)
{
	public var NO_SCALING = 0;
	public var FULLSCREEN = 1;
	public var STRETCH_TO_FIT = 2;
	public var SCALE_TO_FIT_LETTERBOX = 3;
	public var SCALE_TO_FIT_FILL = 4;
	public var SCALE_TO_FIT_FULLSCREEN = 5;
	
	@:from private static function fromString (value:String):ScaleMode
	{
		return switch (value)
		{
			case "NO_SCALING": NO_SCALING;
			case "FULLSCREEN": FULLSCREEN;
			case "STRETCH_TO_FIT": STRETCH_TO_FIT;
			case "SCALE_TO_FIT_LETTERBOX": SCALE_TO_FIT_LETTERBOX;
			case "SCALE_TO_FIT_FILL": SCALE_TO_FIT_FILL;
			case "SCALE_TO_FIT_FULLSCREEN": SCALE_TO_FIT_FULLSCREEN;
			default: NO_SCALING;
		}
	}
	
	@:to private static function toString (value:Int):String
	{
		return switch (value)
		{
			case ScaleMode.NO_SCALING: "NO_SCALING";
			case ScaleMode.FULLSCREEN: "FULLSCREEN";
			case ScaleMode.STRETCH_TO_FIT: "STRETCH_TO_FIT";
			case ScaleMode.SCALE_TO_FIT_LETTERBOX: "SCALE_TO_FIT_LETTERBOX";
			case ScaleMode.SCALE_TO_FIT_FILL: "SCALE_TO_FIT_FILL";
			case ScaleMode.SCALE_TO_FIT_FULLSCREEN: "SCALE_TO_FIT_FULLSCREEN";
			default: "NO_SCALING";
		}
	}
}
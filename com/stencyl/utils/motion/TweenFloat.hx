package com.stencyl.utils.motion;

import tweenxcore.Tools.FloatTools;

class TweenFloat extends TweenObject
{
	public var startValue:Float;
	public var endValue:Float;
	public var value:Float;
	
	public function new()
	{
		super();
	}
	
	public function tween(startValue:Float, endValue:Float, easing:EasingFunction, duration:Int):TweenFloat
	{
		this.startValue = startValue;
		this.endValue = endValue;
		value = startValue;
		
		_tween(easing, duration);
		
		return this;
	}
	
	override public function updateValue()
	{
		value = FloatTools.lerp(easing.apply(time/duration), startValue, endValue);
	}
}
package;

import openfl.Assets;
import flash.geom.Rectangle;
import flash.net.SharedObject;
import org.flixel.FlxButton;
import org.flixel.FlxG;
import org.flixel.FlxPath;
import org.flixel.FlxSave;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;
import org.flixel.system.input.FlxTouch;
import org.flixel.util.FlxMath;

class MenuState extends FlxState
{
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		// Set a background color
		add(new FlxSprite(0, 0, Resourses.menu_bg));
		// Show the mouse (in case it hasn't been disabled)
		FlxG.mouse.hide();
		super.create();
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}
	private function keyHandling():Void
	{
		if (FlxG.keys.pressed("SPACE")) {
			trace("space pressed");
			FlxG.fade(0xff000000, 1, false, startGame);
		}
		var touch = FlxG.touchManager.getFirstTouch();
		if ( touch != null) {
			FlxG.fade(0xff000000, 1, false, startGame);
		}
	}
	private function startGame():Void
	{
		FlxG.switchState(new PlayState());
	}
	
	

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
		keyHandling();
	}	
}
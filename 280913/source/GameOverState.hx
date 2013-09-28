package ;
import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;

/**
 * ...
 * @author Oliver Ross
 */
class GameOverState extends FlxState
{
	public function new() 
	{
		super();
	}
	override public function create():Void
	{
		add(new FlxSprite(0, 0, Resourses.gover));
		super.create();
	}
	override public function update():Void
	{
		super.update();
		keyHandling();
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
		FlxG.switchState(new MenuState());
	}
	
}
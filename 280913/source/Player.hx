package ;
import org.flixel.FlxG;
import org.flixel.FlxObject;
import org.flixel.FlxSprite;
import org.flixel.util.FlxPoint;

/**
 * ...
 * @author Oliver Ross
 */
class Player extends FlxSprite
{
	
	public function new(xp, yp) 
	{
		super(xp, yp);
	//	makeGraphic(32, 64, 0xffffffff);
		loadGraphic(Resourses.player, true, false, 104, 128);
		addAnimation("leftwall", [0]);
		addAnimation("leftjump", [1]);
		addAnimation("rightwall", [3]);
		addAnimation("rightjump", [2]);
		play("leftwall");
		acceleration = new FlxPoint(0, 600);
		maxVelocity = new FlxPoint(1000, 1000);
		drag = new FlxPoint(500, 500);
		velocity = new FlxPoint( -1000, 0);
		//scale.x = scale.y = 2;
	}
	override public function update():Void
	{
		super.update();
		doInput();
		if (y <= 0) {
			y = 0;
			velocity.y = 0;
		}
	}
	private function doInput():Void
	{
		var touch = FlxG.touchManager.getFirstTouch();
		if ( touch != null) {
			doJump();
		}
		if (FlxG.keys.justPressed("SPACE")) {
			doJump();
		}
		if (x > 90 && x <= FlxG.width / 2) {
			play("leftjump");
		}else if (x > FlxG.width / 2 && x < FlxG.width - 190) {
			play("rightjump");
		}else if (x < 86) {
			play("leftwall");
		}else if (x > (FlxG.width - 190)){
			play("rightwall");
		}
	}
	private function doJump():Void
	{
		if (x < 86) {
			velocity = new FlxPoint(1000, -600);
		}else if (x > (FlxG.width - 190)) {
			velocity = new FlxPoint(-1000, -600);
		}
	}	
	public function hitMarble(pl:Player, m:Marble):Void
	{
		velocity.y += 250;
		m.velocity.y = -500;
	}
}
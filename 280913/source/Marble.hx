package ;
import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.util.FlxPoint;

/**
 * ...
 * @author Oliver Ross
 */
class Marble extends FlxSprite
{
	private var spin:UInt; 
	
	public function new(xp, yp) 
	{
		super(xp, yp);
		loadGraphic(Resourses.marblestrip, true, false, 64, 64);
		addAnimation("play", [Math.round(Math.random() * 10)]);
		play("play");
		//velocity.y = 500 + (Math.random() * 500);
		acceleration = new FlxPoint(0, 700);
		maxVelocity = new FlxPoint(1000, 700);
		velocity.x = -500 + (Math.random() * 1000);
		spin = Math.round(Math.random() * 10);
		scale.x = scale.y = 2;
	}
	override public function update():Void
	{
		super.update();
		angle += spin;
		if (y > 1700) {
			y = -1000;
			addAnimation("play", [Math.round(Math.random() * 10)]); 
			play("play");
		}
		if (x <= 90) {
			x = 91;
			velocity.x *= -1;
		}
		if (x >= (FlxG.width - 178)) {
			x = (FlxG.width - 177); 
			velocity.x *= -1;
		}
	}
	
}
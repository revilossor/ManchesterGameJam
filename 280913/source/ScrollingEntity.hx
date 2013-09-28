package ;
import org.flixel.FlxSprite;

/**
 * ...
 * @author Oliver Ross
 */
class ScrollingEntity extends FlxSprite
{

	public function new(xp, yp, gfx)
	{
		super(xp, yp);
		loadGraphic(gfx);
		immovable = true;
	}
	
}
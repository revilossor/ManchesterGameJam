package ;
import org.flixel.FlxG;
import org.flixel.FlxGroup;
import org.flixel.FlxObject;
import org.flixel.FlxSprite;

/**
 * ...
 * @author Oliver Ross
 */
class ScrollingWall extends FlxGroup
{
	private var _first:ScrollingEntity;
	private var _second:ScrollingEntity;
	
	public function new(side) 
	{
		super();
		if(side == FlxObject.LEFT){
			_first = new ScrollingEntity(0, 0, Resourses.wall);
			_second = new ScrollingEntity(0, -_first.height, Resourses.wall);
		}else if (side == FlxObject.RIGHT) {
			_first = new ScrollingEntity(880, 0, Resourses.wall_right);
			_second = new ScrollingEntity(880, -_first.height, Resourses.wall_right);
		}
		add(_first);
		add(_second);
	}
	override public function update():Void
	{
		super.update();
		_first.y += 16;
		_second.y += 16;
		if (_first.y >= FlxG.height) {
			_first.y = _second.y - _first.height;
		}
		if (_second.y >= FlxG.height) {
			_second.y = _first.y - _second.height;
		}
	}
	
}
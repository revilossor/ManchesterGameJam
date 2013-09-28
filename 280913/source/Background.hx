package ;
import org.flixel.FlxG;
import org.flixel.FlxGroup;

/**
 * ...
 * @author Oliver Ross
 */
class Background extends FlxGroup
{
	private var _first:ScrollingEntity;
	private var _second:ScrollingEntity;
	
	public function new() 
	{
		super();
		_first = new ScrollingEntity(0, 0, Resourses.bg);
		_second = new ScrollingEntity(0, -_first.height, Resourses.bg);
		add(_first);
		add(_second);
	}
	override public function update():Void
	{
		super.update();
		_first.y += 10;
		_second.y += 10;
		if (_first.y >= FlxG.height) {
			_first.y = _second.y - _first.height;
		}
		if (_second.y >= FlxG.height) {
			_second.y = _first.y - _second.height;
		}
	}
	
}
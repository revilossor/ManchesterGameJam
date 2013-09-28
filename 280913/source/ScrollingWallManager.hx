package ;
import org.flixel.FlxGroup;
import org.flixel.FlxObject;
/**
 * ...
 * @author Oliver Ross
 */
class ScrollingWallManager extends FlxGroup
{
	private var _left:ScrollingWall;
	private var _right:ScrollingWall;
//	private var _floor:ScrollingEntity;
	
	public function new() 
	{
		super();
	//	_floor = new ScrollingEntity(80, 1628, Resourses.start_floor);
	//	add(_floor);
		_left = new ScrollingWall(FlxObject.LEFT);
		add(_left);
		_right = new ScrollingWall(FlxObject.RIGHT);
		add(_right);
	}
	override public function update():Void
	{
		super.update();
	}
	
}